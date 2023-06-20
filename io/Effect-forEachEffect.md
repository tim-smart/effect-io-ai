# forEachEffect

Returns a new effect that will pass the success value of this effect to the
provided callback. If this effect fails, then the failure will be ignored.

To import and use `forEachEffect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.forEachEffect
```

**Signature**

```ts
export declare const forEachEffect: {
  <A, R1, E1, B>(f: (a: A) => Effect<R1, E1, B>): <R, E>(self: Effect<R, E, A>) => Effect<R1 | R, E1, Option.Option<B>>
  <R, E, A, R1, E1, B>(self: Effect<R, E, A>, f: (a: A) => Effect<R1, E1, B>): Effect<R | R1, E1, Option.Option<B>>
}
```
