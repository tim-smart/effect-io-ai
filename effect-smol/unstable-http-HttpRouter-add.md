Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.add

Create a layer that adds a single route to the HTTP router.

```ts
import { Effect } from "effect"
import * as HttpRouter from "effect/unstable/http/HttpRouter"
import * as HttpServerResponse from "effect/unstable/http/HttpServerResponse"

const Route = HttpRouter.add(
  "GET",
  "/hello",
  Effect.succeed(HttpServerResponse.text("Hello, World!"))
)
```

**Signature**

```ts
declare const add: <E = never, R = never>(method: "*" | "GET" | "POST" | "PUT" | "PATCH" | "DELETE" | "OPTIONS", path: PathInput, handler: HttpServerResponse.HttpServerResponse | Effect.Effect<HttpServerResponse.HttpServerResponse, E, R> | ((request: HttpServerRequest.HttpServerRequest) => Effect.Effect<HttpServerResponse.HttpServerResponse, E, R>), options?: { readonly uninterruptible?: boolean | undefined; }) => Layer.Layer<never, never, HttpRouter | Request.From<"Requires", Exclude<R, Provided>> | Request.From<"Error", E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L408)

Since v4.0.0