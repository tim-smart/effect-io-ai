# runFoldScoped

Executes a pure fold over the stream of values. Returns a scoped value that
represents the scope of the stream.

To import and use `runFoldScoped` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runFoldScoped
```

**Signature**

```ts
export declare const runFoldScoped: {
  <S, A>(s: S, f: (s: S, a: A) => S): <R, E>(self: Stream<A, E, R>) => Effect.Effect<S, E, Scope.Scope | R>
  <R, E, S, A>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => S): Effect.Effect<S, E, Scope.Scope | R>
}
```
