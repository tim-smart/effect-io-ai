# matchEffect

Effectful version of `Take.fold`.

Folds over the failure cause, success value and end-of-stream marker to
yield an effect.

To import and use `matchEffect` from the "Take" module:

```ts
import * as Take from 'effect/Take'

// Can be accessed like this
Take.matchEffect
```

**Signature**

```ts
export declare const matchEffect: {
  <R, E2, Z, R2, E, Z2, A, R3, E3, Z3>(options: {
    readonly onEnd: () => Effect.Effect<R, E2, Z>
    readonly onFailure: (cause: Cause.Cause<E>) => Effect.Effect<R2, E2, Z2>
    readonly onSuccess: (chunk: Chunk.Chunk<A>) => Effect.Effect<R3, E3, Z3>
  }): (self: Take<E, A>) => Effect.Effect<R | R2 | R3, E2 | E | E3, Z | Z2 | Z3>
  <R, E2, Z, R2, E, Z2, A, R3, E3, Z3>(
    self: Take<E, A>,
    options: {
      readonly onEnd: () => Effect.Effect<R, E2, Z>
      readonly onFailure: (cause: Cause.Cause<E>) => Effect.Effect<R2, E2, Z2>
      readonly onSuccess: (chunk: Chunk.Chunk<A>) => Effect.Effect<R3, E3, Z3>
    }
  ): Effect.Effect<R | R2 | R3, E2 | E | E3, Z | Z2 | Z3>
}
```
