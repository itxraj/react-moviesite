[33mcommit 80c1ff82e4ada7b4a0cbd31e1fd0b80ba0198e5b[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m)[m
Author: Raj <your@email.com>
Date:   Wed Oct 22 02:38:12 2025 +0530

    Remove .env from repo

[1mdiff --git a/.env b/.env[m
[1mdeleted file mode 100644[m
[1mindex 694e44d..0000000[m
[1m--- a/.env[m
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-VITE_TMDB_API_KEY=2563fbe88e299242908c43c05926ac97[m
[31m-VITE_APPWRITE_DATABASE_ID=65fabc9876543210fedcba[m
[31m-VITE_APPWRITE_PROJECT_ID=65fabc1234567890abcdef[m
[31m-VITE_APPWRITE_COLLECTION_ID=movies[m
\ No newline at end of file[m

[33mcommit 2bc4e45dfc44fec7bfbe296417f1a2fae8e1ddb0[m
Author: Raj <your@email.com>
Date:   Wed Oct 22 02:37:57 2025 +0530

    Ignore .env file

[1mdiff --git a/.gitignore b/.gitignore[m
[1mindex ae2c248..0273e56 100644[m
[1m--- a/.gitignore[m
[1m+++ b/.gitignore[m
[36m@@ -23,3 +23,4 @@[m [mdist-ssr[m
 *.sln[m
 *.sw?[m
 .env.example[m
[32m+[m[32m".env"[m[41m [m

[33mcommit ee77a9fb87134596ac0a190874bc11aaf00ef3ae[m
Author: Raj <your@email.com>
Date:   Wed Oct 22 02:33:16 2025 +0530

    Initial clean commit

[1mdiff --git a/.env b/.env[m
[1mnew file mode 100644[m
[1mindex 0000000..694e44d[m
[1m--- /dev/null[m
[1m+++ b/.env[m
[36m@@ -0,0 +1,4 @@[m
[32m+[m[32mVITE_TMDB_API_KEY=2563fbe88e299242908c43c05926ac97[m
[32m+[m[32mVITE_APPWRITE_DATABASE_ID=65fabc9876543210fedcba[m
[32m+[m[32mVITE_APPWRITE_PROJECT_ID=65fabc1234567890abcdef[m
[32m+[m[32mVITE_APPWRITE_COLLECTION_ID=movies[m
\ No newline at end of file[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mnew file mode 100644[m
[1mindex 0000000..ae2c248[m
[1m--- /dev/null[m
[1m+++ b/.gitignore[m
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32m# Logs[m
[32m+[m[32mlogs[m
[32m+[m[32m*.log[m
[32m+[m[32mnpm-debug.log*[m
[32m+[m[32myarn-debug.log*[m
[32m+[m[32myarn-error.log*[m
[32m+[m[32mpnpm-debug.log*[m
[32m+[m[32mlerna-debug.log*[m
[32m+[m
[32m+[m[32mnode_modules[m
[32m+[m[32mdist[m
[32m+[m[32mdist-ssr[m
[32m+[m[32m*.local[m
[32m+[m
[32m+[m[32m# Editor directories and files[m
[32m+[m[32m.vscode/*[m
[32m+[m[32m!.vscode/extensions.json[m
[32m+[m[32m.idea[m
[32m+[m[32m.DS_Store[m
[32m+[m[32m*.suo[m
[32m+[m[32m*.ntvs*[m
[32m+[m[32m*.njsproj[m
[32m+[m[32m*.sln[m
[32m+[m[32m*.sw?[m
[32m+[m[32m.env.example[m
[1mdiff --git a/README.md b/README.md[m
[1mnew file mode 100644[m
[1mindex 0000000..c137e48[m
[1m--- /dev/null[m
[1m+++ b/README.md[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m"# react-moviesite"[m[41m [m
[1mdiff --git a/eslint.config.js b/eslint.config.js[m
[1mnew file mode 100644[m
[1mindex 0000000..238d2e4[m
[1m--- /dev/null[m
[1m+++ b/eslint.config.js[m
[36m@@ -0,0 +1,38 @@[m
[32m+[m[32mimport js from '@eslint/js'[m
[32m+[m[32mimport globals from 'globals'[m
[32m+[m[32mimport react from 'eslint-plugin-react'[m
[32m+[m[32mimport reactHooks from 'eslint-plugin-react-hooks'[m
[32m+[m[32mimport reactRefresh from 'eslint-plugin-react-refresh'[m
[32m+[m
[32m+[m[32mexport default [[m
[32m+[m[32m  { ignores: ['dist'] },[m
[32m+[m[32m  {[m
[32m+[m[32m    files: ['**/*.{js,jsx}'],[m
[32m+[m[32m    languageOptions: {[m
[32m+[m[32m      ecmaVersion: 2020,[m
[32m+[m[32m      globals: globals.browser,[m
[32m+[m[32m      parserOptions: {[m
[32m+[m[32m        ecmaVersion: 'latest',[m
[32m+[m[32m        ecmaFeatures: { jsx: true },[m
[32m+[m[32m        sourceType: 'module',[m
[32m+[m[32m      },[m
[32m+[m[32m    },[m
[32m+[m[32m    settings: { react: { version: '18.3' } },[m
[32m+[m[32m    plugins: {[m
[32m+[m[32m      react,[m
[32m+[m[32m      'react-hooks': reactHooks,[m
[32m+[m[32m      'react-refresh': reactRefresh,[m
[32m+[m[32m    },[m
[32m+[m[32m    rules: {[m
[32m+[m[32m      ...js.configs.recommended.rules,[m
[32m+[m[32m      ...react.configs.recommended.rules,[m
[32m+[m[32m      ...react.configs['jsx-runtime'].rules,[m
[32m+[m[32m      ...reactHooks.configs.recommended.rules,[m
[32m+[m[32m      'react/jsx-no-target-blank': 'off',[m
[32m+[m[32m      'react-refresh/only-export-components': [[m
[32m+[m[32m        'warn',[m
[32m+[m[32m        { allowConstantExport: true },[m
[32m+[m[32m      ],[m
[32m+[m[32m    },[m
[32m+[m[32m  },[m
[32m+[m[32m][m
[1mdiff --git a/git b/git[m
[1mnew file mode 100644[m
[1mindex 0000000..e69de29[m
[1mdiff --git a/index.html b/index.html[m
[1mnew file mode 100644[m
[1mindex 0000000..cbabb6f[m
[1m--- /dev/null[m
[1m+++ b/index.html[m
[36m@@ -0,0 +1,13 @@[m
[32m+[m[32m<!doctype html>[m
[32m+[m[32m<html lang="en">[m
[32m+[m[32m  <head>[m
[32m+[m[32m    <meta charset="UTF-8" />[m
[32m+[m[32m    <link rel="icon" type="image/svg+xml" href="/star.svg" />[m
[32m+[m[32m    <meta name="viewport" content="width=device-width, initial-scale=1.0" />[m
[32m+[m[32m    <title>TV Time</title>[m
[32m+[m[32m  </head>[m
[32m+[m[32m  <body>[m
[32m+[m[32m    <div id="root"></div>[m
[32m+[m[32m    <script type="module" src="/src/main.jsx"></script>[m
[32m+[m[32m  </body>[m
[32m+[m[32m</html>[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mnew file mode 100644[m
[1mindex 0000000..c1cad01[m
[1m--- /dev/null[m
[1m+++ b/package-lock.json[m
[36m@@ -0,0 +1,5345 @@[m
[32m+[m[32m{[m
[32m+[m[32m  "name": "my-first-react-app",[m
[32m+[m[32m  "version": "0.0.0",[m
[32m+[m[32m  "lockfileVersion": 3,[m
[32m+[m[32m  "requires": true,[m
[32m+[m[32m  "packages": {[m
[32m+[m[32m    "": {[m
[32m+[m[32m      "name": "my-first-react-app",[m
[32m+[m[32m      "version": "0.0.0",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@tailwindcss/vite": "^4.0.0",[m
[32m+[m[32m        "appwrite": "^18.1.1",[m
[32m+[m[32m        "react": "^18.3.1",[m
[32m+[m[32m        "react-dom": "^18.3.1",[m
[32m+[m[32m        "react-use": "^17.6.0",[m
[32m+[m[32m        "tailwindcss": "^4.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "devDependencies": {[m
[32m+[m[32m        "@eslint/js": "^9.17.0",[m
[32m+[m[32m        "@types/react": "^18.3.18",[m
[32m+[m[32m        "@types/react-dom": "^18.3.5",[m
[32m+[m[32m        "@vitejs/plugin-react": "^4.3.4",[m
[32m+[m[32m        "eslint": "^9.17.0",[m
[32m+[m[32m        "eslint-plugin-react": "^7.37.2",[m
[32m+[m[32m        "eslint-plugin-react-hooks": "^5.0.0",[m
[32m+[m[32m        "eslint-plugin-react-refresh": "^0.4.16",[m
[32m+[m[32m        "globals": "^15.14.0",[m
[32m+[m[32m        "vite": "^6.4.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@ampproject/remapping": {[m
[32m+[m[32m      "version": "2.3.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@ampproject/remapping/-/remapping-2.3.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-30iZtAPgz+LTIYoeivqYo853f02jBYSd5uGnGpkFV0M3xOt9aN73erkgYAmZU43x4VfqcnLxW9Kpg3R5LC4YYw==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "license": "Apache-2.0",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@jridgewell/gen-mapping": "^0.3.5",[m
[32m+[m[32m        "@jridgewell/trace-mapping": "^0.3.24"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=6.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@babel/code-frame": {[m
[32m+[m[32m      "version": "7.26.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.26.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-RJlIHRueQgwWitWgF8OdFYGZX328Ax5BCemNGlqHfplnRT9ESi8JkFlvaVYbS+UubVY6dpv87Fs2u5M29iNFVQ==",[m
[32m+[m[32m      "dev": true,[m
[32m+[m[32m      "license": "MIT",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@babel/helper-validator-identifier": "^7.25.9",[m
[32m+[m[32m   