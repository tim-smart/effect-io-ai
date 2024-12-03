# matchEffect

Effectful version of `Take.fold`.

Folds over the failure cause, success value and end-of-stream marker to
yield an effect.

To import and use `matchEffect` from the "Take" module:

```ts
import * as Take from "effect/Take"
// Can be accessed like this
Take.matchEffect
```

**Signature**

```ts
export declare const matchEffect: {
  <Z, E2, R, E, Z2, R2, A, Z3, E3, R3>(options: {
    readonly onEnd: Effect.Effect<Z, E2, R>
    readonly onFailure: (cause: Cause.Cause<E>) => Effect.Effect<Z2, E2, R2>
    readonly onSuccess: (chunk: Chunk.Chunk<A>) => Effect.Effect<Z3, E3, R3>
  }): (self: Take<A, E>) => Effect.Effect<Z | Z2 | Z3, E2 | E | E3, R | R2 | R3>
  <A, E, Z, E2, R, Z2, R2, Z3, E3, R3>(
    self: Take<A, E>,
    options: {
      readonly onEnd: Effect.Effect<Z, E2, R>
      readonly onFailure: (cause: Cause.Cause<E>) => Effect.Effect<Z2, E2, R2>
      readonly onSuccess: (chunk: Chunk.Chunk<A>) => Effect.Effect<Z3, E3, R3>
    }
  ): Effect.Effect<Z | Z2 | Z3, E | E2 | E3, R | R2 | R3>
}
```
