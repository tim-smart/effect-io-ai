# unlessEffect

The moral equivalent of `if (!p) exp` when `p` has side-effects.

To import and use `unlessEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.unlessEffect
```

**Signature**

```ts
export declare const unlessEffect: {
  <R2, E2>(
    predicate: Effect<R2, E2, boolean>
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<R2 | R, E2 | E, Option.Option<A>>
  <R, E, A, R2, E2>(self: Effect<R, E, A>, predicate: Effect<R2, E2, boolean>): Effect<R | R2, E | E2, Option.Option<A>>
}
```
