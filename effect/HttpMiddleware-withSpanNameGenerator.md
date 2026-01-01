Package: `@effect/platform`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.withSpanNameGenerator

Customizes the span name for the http app.

```ts
import {
  HttpMiddleware,
  HttpRouter,
  HttpServer,
  HttpServerResponse
} from "@effect/platform"
import { NodeHttpServer, NodeRuntime } from "@effect/platform-node"
import { Layer } from "effect"
import { createServer } from "http"

HttpRouter.empty.pipe(
  HttpRouter.get("/", HttpServerResponse.empty()),
  HttpServer.serve(),
  // Customize the span names for this HttpApp
  HttpMiddleware.withSpanNameGenerator((request) => `GET ${request.url}`),
  Layer.provide(NodeHttpServer.layer(createServer, { port: 3000 })),
  Layer.launch,
  NodeRuntime.runMain
)
```

**Signature**

```ts
declare const withSpanNameGenerator: { (f: (request: ServerRequest.HttpServerRequest) => string): <A, E, R>(layer: Layer.Layer<A, E, R>) => Layer.Layer<A, E, R>; <A, E, R>(layer: Layer.Layer<A, E, R>, f: (request: ServerRequest.HttpServerRequest) => string): Layer.Layer<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpMiddleware.ts#L229)

Since v1.0.0