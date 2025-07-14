Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.add

Create a layer that adds a single route to the HTTP router.

```ts
import * as HttpLayerRouter from "@effect/platform/HttpLayerRouter"
import * as HttpServerResponse from "@effect/platform/HttpServerResponse"

const Route = HttpLayerRouter.add("GET", "/hello", HttpServerResponse.text("Hello, World!"))
```

**Signature**

```ts
declare const add: <E, R>(method: "*" | "GET" | "POST" | "PUT" | "PATCH" | "DELETE" | "OPTIONS", path: PathInput, handler: Effect.Effect<HttpServerResponse.HttpServerResponse, E, R> | ((request: HttpServerRequest.HttpServerRequest) => Effect.Effect<HttpServerResponse.HttpServerResponse, E, R>), options?: { readonly uninterruptible?: boolean | undefined; }) => Layer.Layer<never, never, HttpRouter | Request.From<"Requires", Exclude<R, Provided>> | Request.From<"Error", E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L300)

Since v1.0.0