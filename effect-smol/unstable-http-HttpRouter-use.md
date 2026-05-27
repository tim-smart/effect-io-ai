Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.use

Creates a layer that accesses the current `HttpRouter` service and runs the
supplied effect.

**When to use**

Use when you use it to register routes or middleware with the router during layer
construction.

**Example** (Registering routes during layer construction)

```ts
import { Effect, Layer } from "effect"
import { HttpRouter } from "effect/unstable/http"

const MyRoute = Layer.effectDiscard(Effect.gen(function*() {
  const router = yield* HttpRouter.HttpRouter

  // then use `yield* router.add(...)` to add a route
}))
```

**Signature**

```ts
declare const use: <A, E, R>(f: (router: HttpRouter) => Effect.Effect<A, E, R>) => Layer.Layer<never, E, HttpRouter | Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L492)

Since v4.0.0