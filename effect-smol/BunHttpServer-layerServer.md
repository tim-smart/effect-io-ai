Package: `@effect/platform-bun`<br />
Module: `BunHttpServer`<br />

## BunHttpServer.layerServer

Layer that provides only `HttpServer` by constructing a scoped Bun server from the supplied serve options.

**Signature**

```ts
declare const layerServer: <R extends string>(options: ServeOptions<R> & { readonly disablePreemptiveShutdown?: boolean | undefined; readonly gracefulShutdownTimeout?: Duration.Input | undefined; }) => Layer.Layer<Server.HttpServer>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunHttpServer.ts#L253)

Since v4.0.0