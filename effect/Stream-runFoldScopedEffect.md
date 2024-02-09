# runFoldScopedEffect

Executes an effectful fold over the stream of values. Returns a scoped
value that represents the scope of the stream.

To import and use `runFoldScopedEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runFoldScopedEffect
```

**Signature**

```ts
export declare const runFoldScopedEffect: {
  <S, A, R2, E2>(
    s: S,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Effect.Effect<S, E2 | E, Scope.Scope | R2 | R>
  <R, E, S, A, R2, E2>(
    self: Stream<A, E, R>,
    s: S,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): Effect.Effect<S, E | E2, Scope.Scope | R | R2>
}
```
