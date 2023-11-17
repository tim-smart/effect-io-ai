# flipWith

Swaps the error/value parameters, applies the function `f` and flips the
parameters back

To import and use `flipWith` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.flipWith
```

**Signature**

```ts
export declare const flipWith: {
  <R, A, E, R2, A2, E2>(
    f: (effect: Effect<R, A, E>) => Effect<R2, A2, E2>
  ): (self: Effect<R, E, A>) => Effect<R2, E2, A2>
  <R, A, E, R2, A2, E2>(self: Effect<R, E, A>, f: (effect: Effect<R, A, E>) => Effect<R2, A2, E2>): Effect<R2, E2, A2>
}
```
