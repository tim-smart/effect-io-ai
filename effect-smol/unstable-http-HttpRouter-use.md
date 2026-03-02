Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.use

A helper function that is the equivalent of:

```ts
import { Effect } from "effect"
import * as Layer from "effect/Layer"
import * as HttpRouter from "effect/unstable/http/HttpRouter"

const MyRoute = Layer.effectDiscard(Effect.gen(function*() {
  const router = yield* HttpRouter.HttpRouter

  // then use `yield* router.add(...)` to add a route
}))
```

**Signature**

```ts
declare const use: <A, E, R>(f: (router: HttpRouter) => Effect.Effect<A, E, R>) => Layer.Layer<never, E, HttpRouter | Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L386)

Since v4.0.0