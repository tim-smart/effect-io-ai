Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.addAll

Create a layer that adds multiple routes to the HTTP router.

```ts
import * as HttpLayerRouter from "@effect/platform/HttpLayerRouter"
import * as HttpServerResponse from "@effect/platform/HttpServerResponse"

const Routes = HttpLayerRouter.addAll([
  HttpLayerRouter.route("GET", "/hello", HttpServerResponse.text("Hello, World!"))
])
```

**Signature**

```ts
declare const addAll: <Routes extends ReadonlyArray<Route<any, any>>, EX = never, RX = never>(routes: Routes | Effect.Effect<Routes, EX, RX>, options?: { readonly prefix?: string | undefined; }) => Layer.Layer<never, EX, HttpRouter | Exclude<RX, Scope.Scope> | Type.From<"Requires", Exclude<Route.Context<Routes[number]>, Provided>> | Type.From<"Error", Route.Error<Routes[number]>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L322)

Since v1.0.0