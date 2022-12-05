#!/usr/bin/env bash

# Install required dependencies
npm ci

# Build app, important: generatePackageJson is set to true in the project.json!
npx nx build

# Remove parent node_modules
rm -rf node_modules

# Run bundled app
cd dist/apps/*
npm i
node main.js

# ERROR [PackageLoader] No driver (HTTP) has been selected. 
# In order to take advantage of the default driver, please, 
# ensure to install the "@nestjs/platform-express" package ($ npm install @nestjs/platform-express).
