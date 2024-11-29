# layerTestClient

Layer producing an `HttpClient` with prepended url of the running http server.

To import and use `layerTestClient` from the "HttpServer" module:

ts
import \* as HttpServer from "@effect/platform/HttpServer"
// Can be accessed like this
HttpServer.layerTestClient
undefined

**Signature**

```ts
export declare const layerTestClient: Layer.Layer<
  Client.HttpClient<HttpClientError, Scope.Scope>,
  never,
  HttpServer | Client.HttpClient<HttpClientError, Scope.Scope>
>
```
