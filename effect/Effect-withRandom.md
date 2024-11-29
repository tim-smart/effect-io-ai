# withRandom

Executes the specified workflow with the specified implementation of the
random service.

To import and use `withRandom` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.withRandom
undefined

**Signature**

```ts
export declare const withRandom: {
  <X extends Random.Random>(value: X): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <X extends Random.Random, A, E, R>(effect: Effect<A, E, R>, value: X): Effect<A, E, R>
}
```
