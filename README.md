# NX NestJS platform-express reproducer

This is a small reproducer to recreate the circumstances under which nestjs fails to start with

```
ERROR [PackageLoader] No driver (HTTP) has been selected. In order to take advantage of the default driver, please, ensure to install the "@nestjs/platform-express" package ($ npm install @nestjs/platform-express).
```

The project was created with `npx create-nx-workspace nx-nestjs-platform-reproducer --preset=nest`.
Then, the `project.json` was adapted to use `"generatePackageJson": true`.

To reproduce the error, follow the commands of `./run-reproducer.sh`.
When running the server, the error message will be logged.
The package.json will not include the required `@nestjs/platform-express` dependency.
