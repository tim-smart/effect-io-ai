# flipWith

Swaps the error/value parameters, applies the function `f` and flips the
parameters back

To import and use `flipWith` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.flipWith
undefined

**Signature**

```ts
export declare const flipWith: {
  <E, A, R, E2, A2, R2>(
    f: (effect: Effect<E, A, R>) => Effect<E2, A2, R2>
  ): (self: Effect<A, E, R>) => Effect<A2, E2, R2>
  <A, E, R, E2, A2, R2>(self: Effect<A, E, R>, f: (effect: Effect<E, A, R>) => Effect<E2, A2, R2>): Effect<A2, E2, R2>
}
```
