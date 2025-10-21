import { Client, Databases, ID, Query } from 'appwrite';

// ✅ Load environment variables
const PROJECT_ID = import.meta.env.VITE_APPWRITE_PROJECT_ID;
const DATABASE_ID = import.meta.env.VITE_APPWRITE_DATABASE_ID;
const COLLECTION_ID = import.meta.env.VITE_APPWRITE_COLLECTION_ID;

// ✅ Initialize Appwrite client
const client = new Client()
  .setEndpoint('https://fra.cloud.appwrite.io/v1')
  .setProject(PROJECT_ID);

const database = new Databases(client);

// ✅ Update search count logic
export const updateSearchCount = async (searchTerm, movie) => {
  try {
    const result = await database.listDocuments(DATABASE_ID, COLLECTION_ID, [
      Query.equal('searchTerm', searchTerm),
    ]);

    if (result.documents.length > 0) {
      const doc = result.documents[0];
      await database.updateDocument(DATABASE_ID, COLLECTION_ID, doc.$id, {
        count: doc.count + 1,
      });
    } else {
      await database.createDocument(DATABASE_ID, COLLECTION_ID, ID.unique(), {
        searchTerm,
        count: 1,
        movie_id: movie.id,
        poster_url: movie.poster_path
          ? `https://image.tmdb.org/t/p/w500${movie.poster_path}`
          : '/fallback.png',
      });
    }
  } catch (error) {
    console.error('Error updating search count:', error);
  }
};

// ✅ Get trending movies logic
export const getTrendingMovies = async () => {
  try {
    const result = await database.listDocuments(DATABASE_ID, COLLECTION_ID, [
      Query.limit(5),
      Query.orderDesc('count'),
    ]);

    return result?.documents || [];
  } catch (error) {
    console.error('Error fetching trending movies:', error);
    return [];
  }
};
console.log({
  PROJECT_ID: import.meta.env.VITE_APPWRITE_PROJECT_ID,
  DATABASE_ID: import.meta.env.VITE_APPWRITE_DATABASE_ID,
  COLLECTION_ID: import.meta.env.VITE_APPWRITE_COLLECTION_ID,
  TMDB_KEY: import.meta.env.VITE_TMDB_API_KEY
});