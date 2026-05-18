Package: `@effect/platform-bun`<br />
Module: `BunHttpServer`<br />

## BunHttpServer.layerConfig

Creates the Bun HTTP server and support-services layer from configurable serve options.

**Signature**

```ts
declare const layerConfig: <R extends string>(options: Config.Wrap<ServeOptions<R> & { readonly disablePreemptiveShutdown?: boolean | undefined; readonly gracefulShutdownTimeout?: Duration.Input | undefined; }>) => Layer.Layer<Server.HttpServer | HttpPlatform | FileSystem.FileSystem | Etag.Generator | Path.Path, ConfigError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunHttpServer.ts#L315)

Since v4.0.0