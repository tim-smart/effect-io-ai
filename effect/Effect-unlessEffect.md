# unlessEffect

Conditionally execute an effect based on the result of another effect.

To import and use `unlessEffect` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.unlessEffect
undefined

**Signature**

```ts
export declare const unlessEffect: {
  <E2, R2>(
    condition: Effect<boolean, E2, R2>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E2 | E, R2 | R>
  <A, E, R, E2, R2>(self: Effect<A, E, R>, condition: Effect<boolean, E2, R2>): Effect<Option.Option<A>, E | E2, R | R2>
}
```
