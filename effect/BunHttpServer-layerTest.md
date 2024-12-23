# layerTest

Layer starting a server on a random port and producing an `HttpClient`
with prepended url of the running http server.

To import and use `layerTest` from the "BunHttpServer" module:

```ts
import * as BunHttpServer from "@effect/platform-bun/BunHttpServer"
// Can be accessed like this
BunHttpServer.layerTest
```

**Signature**

```ts
export declare const layerTest: Layer.Layer<
  Server.HttpServer | Platform.HttpPlatform | Etag.Generator | BunContext.BunContext | HttpClient.HttpClient,
  HttpServerError.ServeError,
  never
>
```
