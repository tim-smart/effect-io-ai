Package: `@effect/platform-bun`<br />
Module: `BunHttpServer`<br />

## BunHttpServer.layer

Layer that provides a Bun `HttpServer` together with the Bun HTTP platform, ETag generator, and Bun services.

**Signature**

```ts
declare const layer: <R extends string>(options: ServeOptions<R> & { readonly disablePreemptiveShutdown?: boolean | undefined; readonly gracefulShutdownTimeout?: Duration.Input | undefined; }) => Layer.Layer<Server.HttpServer | HttpPlatform | Etag.Generator | BunServices.BunServices>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunHttpServer.ts#L282)

Since v4.0.0