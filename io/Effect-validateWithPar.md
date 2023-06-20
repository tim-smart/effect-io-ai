# validateWithPar

Returns an effect that executes both this effect and the specified effect,
in parallel, combining their results with the specified `f` function. If
both sides fail, then the cause will be combined.

To import and use `validateWithPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.validateWithPar
```

**Signature**

```ts
export declare const validateWithPar: {
  <A, R1, E1, B, C>(that: Effect<R1, E1, B>, f: (a: A, b: B) => C): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R1 | R, E1 | E, C>
  <R, E, A, R1, E1, B, C>(self: Effect<R, E, A>, that: Effect<R1, E1, B>, f: (a: A, b: B) => C): Effect<
    R | R1,
    E | E1,
    C
  >
}
```
