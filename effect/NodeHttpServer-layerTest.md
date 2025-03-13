Package: `@effect/platform-node`<br />
Module: `NodeHttpServer`<br />

## NodeHttpServer.layerTest

Layer starting a server on a random port and producing an `HttpClient`
with prepended url of the running http server.

**Example**

```ts
import * as assert from "node:assert"
import { HttpClient, HttpRouter, HttpServer } from "@effect/platform"
import { NodeHttpServer } from "@effect/platform-node"
import { Effect } from "effect"

Effect.gen(function*() {
  yield* HttpServer.serveEffect(HttpRouter.empty)
  const response = yield* HttpClient.get("/")
  assert.strictEqual(response.status, 404)
}).pipe(Effect.provide(NodeHttpServer.layerTest))
```

**Signature**

```ts
declare const layerTest: Layer.Layer<Server.HttpServer | Platform.HttpPlatform | Etag.Generator | NodeContext.NodeContext | HttpClient.HttpClient, ServeError, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpServer.ts#L110)

Since v1.0.0