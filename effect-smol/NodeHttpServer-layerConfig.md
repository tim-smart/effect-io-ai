Package: `@effect/platform-node`<br />
Module: `NodeHttpServer`<br />

## NodeHttpServer.layerConfig

Provides a Node `HttpServer` and HTTP support services, reading the listen
and shutdown options from a `Config` value.

**Signature**

```ts
declare const layerConfig: (evaluate: LazyArg<Http.Server>, options: Config.Wrap<Net.ListenOptions & { readonly disablePreemptiveShutdown?: boolean | undefined; readonly gracefulShutdownTimeout?: Duration.Input | undefined; }>) => Layer.Layer<HttpServer.HttpServer | FileSystem.FileSystem | Path.Path | HttpPlatform.HttpPlatform | Etag.Generator, ServeError | Config.ConfigError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpServer.ts#L468)

Since v4.0.0