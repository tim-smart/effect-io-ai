Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.middleware

Create a middleware layer that can be used to modify requests and responses.

By default, the middleware only affects the routes that it is provided to.

If you want to create a middleware that applies globally to all routes, pass
the `global` option as `true`.

```ts
import { Effect } from "effect"
import * as Layer from "effect/Layer"
import * as ServiceMap from "effect/ServiceMap"
import * as HttpMiddleware from "effect/unstable/http/HttpMiddleware"
import * as HttpRouter from "effect/unstable/http/HttpRouter"
import * as HttpServerResponse from "effect/unstable/http/HttpServerResponse"

// Here we are defining a CORS middleware
const CorsMiddleware = HttpRouter.middleware(HttpMiddleware.cors()).layer
// You can also use HttpRouter.cors() to create a CORS middleware

class CurrentSession extends ServiceMap.Service<CurrentSession, {
  readonly token: string
}>()("CurrentSession") {}

// You can create middleware that provides a service to the HTTP requests.
const SessionMiddleware = HttpRouter.middleware<{
  provides: CurrentSession
}>()(
  Effect.gen(function*() {
    yield* Effect.log("SessionMiddleware initialized")

    return (httpEffect) =>
      Effect.provideService(httpEffect, CurrentSession, {
        token: "dummy-token"
      })
  })
).layer

Effect.gen(function*() {
  const router = yield* HttpRouter.HttpRouter
  yield* router.add(
    "GET",
    "/hello",
    Effect.gen(function*() {
      // Requests can now access the current session
      const session = yield* CurrentSession
      return HttpServerResponse.text(
        `Hello, World! Your token is ${session.token}`
      )
    })
  )
}).pipe(
  Layer.effectDiscard,
  // Provide the SessionMiddleware & CorsMiddleware to some routes
  Layer.provide([SessionMiddleware, CorsMiddleware])
)
```

**Signature**

```ts
declare const middleware: middleware.Make<never, never> & (<Config extends { provides?: any; handles?: any; } = {}>() => middleware.Make<Config extends { provides: infer R; } ? R : never, Config extends { handles: infer E; } ? E : never>)
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L774)

Since v4.0.0