# runFoldWhileScoped

Executes a pure fold over the stream of values. Returns a scoped value that
represents the scope of the stream. Stops the fold early when the condition
is not fulfilled.

To import and use `runFoldWhileScoped` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runFoldWhileScoped
```

**Signature**

```ts
export declare const runFoldWhileScoped: {
  <S, A>(
    s: S,
    cont: Predicate<S>,
    f: (s: S, a: A) => S
  ): <R, E>(self: Stream<A, E, R>) => Effect.Effect<S, E, Scope.Scope | R>
  <R, E, S, A>(
    self: Stream<A, E, R>,
    s: S,
    cont: Predicate<S>,
    f: (s: S, a: A) => S
  ): Effect.Effect<S, E, Scope.Scope | R>
}
```
