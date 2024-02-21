# runFoldWhileScopedEffect

Executes an effectful fold over the stream of values. Returns a scoped
value that represents the scope of the stream. Stops the fold early when
the condition is not fulfilled.

To import and use `runFoldWhileScopedEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runFoldWhileScopedEffect
```

**Signature**

```ts
export declare const runFoldWhileScopedEffect: {
  <S, A, E2, R2>(
    s: S,
    cont: Predicate<S>,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Effect.Effect<S, E2 | E, Scope.Scope | R2 | R>
  <A, E, R, S, E2, R2>(
    self: Stream<A, E, R>,
    s: S,
    cont: Predicate<S>,
    f: (s: S, a: A) => Effect.Effect<S, E2, R2>
  ): Effect.Effect<S, E | E2, Scope.Scope | R | R2>
}
```
