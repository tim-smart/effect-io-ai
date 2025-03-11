## layerTest

Layer starting a server on a random port and producing an `HttpClient`
with prepended url of the running http server.

**Signature**

```ts
declare const layerTest: Layer.Layer<Server.HttpServer | Platform.HttpPlatform | Etag.Generator | BunContext.BunContext | HttpClient.HttpClient, HttpServerError.ServeError, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunHttpServer.ts#L48)

Since v1.0.0