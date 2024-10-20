# layerTest

Layer starting a server on a random port and producing an `HttpClient`
with prepended url of the running http server.

To import and use `layerTest` from the "NodeHttpServer" module:

```ts
import * as NodeHttpServer from "@effect/platform-node/NodeHttpServer"
// Can be accessed like this
NodeHttpServer.layerTest
```

**Example**

```ts
import { HttpClient, HttpRouter, HttpServer } from "@effect/platform"
import { NodeHttpServer } from "@effect/platform-node"
import { Effect } from "effect"

Effect.gen(function* () {
  yield* HttpServer.serveEffect(HttpRouter.empty)
  const response = yield* HttpClient.get("/")
  assert.strictEqual(response.status, 404)
}).pipe(Effect.provide(NodeHttpServer.layerTest))
```

**Signature**

```ts
export declare const layerTest: Layer.Layer<
  | Server.HttpServer
  | Platform.HttpPlatform
  | Etag.Generator
  | NodeContext.NodeContext
  | HttpClient.HttpClient<HttpClientError, Scope.Scope>,
  ServeError,
  never
>
```
