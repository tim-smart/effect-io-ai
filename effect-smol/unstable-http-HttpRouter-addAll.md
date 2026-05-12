Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.addAll

Create a layer that adds multiple routes to the HTTP router.

```ts
import { Effect } from "effect"
import * as HttpRouter from "effect/unstable/http/HttpRouter"
import * as HttpServerResponse from "effect/unstable/http/HttpServerResponse"

const Routes = HttpRouter.addAll([
  HttpRouter.route(
    "GET",
    "/hello",
    Effect.succeed(HttpServerResponse.text("Hello, World!"))
  )
])
```

**Signature**

```ts
declare const addAll: <Routes extends ReadonlyArray<Route<any, any>>, EX = never, RX = never>(routes: Routes | Effect.Effect<Routes, EX, RX>, options?: { readonly prefix?: string | undefined; }) => Layer.Layer<never, EX, HttpRouter | Exclude<RX, Scope.Scope> | Request.From<"Requires", Exclude<Route.Context<Routes[number]>, Provided>> | Request.From<"Error", Route.Error<Routes[number]>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L441)

Since v4.0.0