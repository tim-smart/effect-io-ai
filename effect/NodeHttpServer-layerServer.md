Package: `@effect/platform-node`<br />
Module: `NodeHttpServer`<br />

## NodeHttpServer.layerServer

Provides an `HttpServer` by creating and managing a scoped Node
`http.Server` with the supplied listen and shutdown options.

**Signature**

```ts
declare const layerServer: (evaluate: LazyArg<Http.Server<typeof Http.IncomingMessage, typeof Http.ServerResponse>>, options: Net.ListenOptions & { readonly disablePreemptiveShutdown?: boolean | undefined; readonly gracefulShutdownTimeout?: Duration.Input | undefined; }) => Layer.Layer<HttpServer.HttpServer, ServeError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpServer.ts#L398)

Since v4.0.0