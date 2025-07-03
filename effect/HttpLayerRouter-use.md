Package: `@effect/platform`<br />
Module: `HttpLayerRouter`<br />

## HttpLayerRouter.use

A helper function that is the equivalent of:

```ts
import * as HttpLayerRouter from "@effect/platform/HttpLayerRouter"
import * as Effect from "effect/Effect"
import * as Layer from "effect/Layer"

const MyRoute = Layer.scopedDiscard(Effect.gen(function*() {
  const router = yield* HttpLayerRouter.HttpRouter

  // then use `router.add` to add a route
}))
```

**Signature**

```ts
declare const use: <A, E, R>(f: (router: HttpRouter) => Effect.Effect<A, E, R>) => Layer.Layer<never, E, HttpRouter | Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpLayerRouter.ts#L256)

Since v1.0.0