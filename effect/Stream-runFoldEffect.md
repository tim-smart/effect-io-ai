# runFoldEffect

Executes an effectful fold over the stream of values.

To import and use `runFoldEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runFoldEffect
```

**Signature**

```ts
export declare const runFoldEffect: {
  <S, A, R2, E2>(
    s: S,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Effect.Effect<S, E2 | E, R2 | R>
  <R, E, S, A, R2, E2>(
    self: Stream<A, E, R>,
    s: S,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): Effect.Effect<S, E | E2, R | R2>
}
```
