Package: `@effect/platform-node`<br />
Module: `NodeHttpServer`<br />

## NodeHttpServer.layer

Provides a Node `HttpServer` together with the Node HTTP platform, ETag, and
core platform services required to serve requests.

**Signature**

```ts
declare const layer: (evaluate: LazyArg<Http.Server>, options: Net.ListenOptions & { readonly disablePreemptiveShutdown?: boolean | undefined; readonly gracefulShutdownTimeout?: Duration.Input | undefined; }) => Layer.Layer<HttpServer.HttpServer | NodeServices.NodeServices | HttpPlatform.HttpPlatform | Etag.Generator, ServeError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpServer.ts#L428)

Since v4.0.0