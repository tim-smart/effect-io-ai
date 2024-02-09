# runFoldWhileEffect

Executes an effectful fold over the stream of values. Stops the fold early
when the condition is not fulfilled.

To import and use `runFoldWhileEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runFoldWhileEffect
```

**Signature**

```ts
export declare const runFoldWhileEffect: {
  <S, A, R2, E2>(
    s: S,
    cont: Predicate<S>,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Effect.Effect<S, E2 | E, R2 | R>
  <R, E, S, A, R2, E2>(
    self: Stream<A, E, R>,
    s: S,
    cont: Predicate<S>,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): Effect.Effect<S, E | E2, R | R2>
}
```
