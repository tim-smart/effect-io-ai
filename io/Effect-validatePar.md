# validatePar

Returns an effect that executes both this effect and the specified effect,
in parallel. Combines both Cause<E1>` when both effects fail.

To import and use `validatePar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.validatePar
```

**Signature**

```ts
export declare const validatePar: {
  <R1, E1, B>(that: Effect<R1, E1, B>): <R, E, A>(self: Effect<R, E, A>) => Effect<R1 | R, E1 | E, [A, B]>
  <R, E, A, R1, E1, B>(self: Effect<R, E, A>, that: Effect<R1, E1, B>): Effect<R | R1, E | E1, [A, B]>
}
```