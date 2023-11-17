# ensuringChild

Acts on the children of this fiber (collected into a single fiber),
guaranteeing the specified callback will be invoked, whether or not this
effect succeeds.

To import and use `ensuringChild` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.ensuringChild
```

**Signature**

```ts
export declare const ensuringChild: {
  <R2, X>(
    f: (fiber: Fiber.Fiber<any, ReadonlyArray<unknown>>) => Effect<R2, never, X>
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<R2 | R, E, A>
  <R, E, A, R2, X>(
    self: Effect<R, E, A>,
    f: (fiber: Fiber.Fiber<any, ReadonlyArray<unknown>>) => Effect<R2, never, X>
  ): Effect<R | R2, E, A>
}
```
