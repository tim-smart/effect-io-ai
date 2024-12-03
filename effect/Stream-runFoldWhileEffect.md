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
  <S, A, E2, R2>(
    s: S,
    cont: Predicate<S>,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Effect.Effect<S, E2 | E, Exclude<R | R2, Scope.Scope>>
  <A, E, R, S, E2, R2>(
    self: Stream<A, E, R>,
    s: S,
    cont: Predicate<S>,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): Effect.Effect<S, E | E2, Exclude<R | R2, Scope.Scope>>
}
```
