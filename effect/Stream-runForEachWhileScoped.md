# runForEachWhileScoped

Like `Stream.runForEachWhile`, but returns a scoped effect so the
finalization order can be controlled.

To import and use `runForEachWhileScoped` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runForEachWhileScoped
```

**Signature**

```ts
export declare const runForEachWhileScoped: {
  <A, R2, E2>(
    f: (a: A) => Effect.Effect<boolean, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Effect.Effect<void, E2 | E, Scope.Scope | R2 | R>
  <R, E, A, R2, E2>(
    self: Stream<A, E, R>,
    f: (a: A) => Effect.Effect<boolean, E2, R2>
  ): Effect.Effect<void, E | E2, Scope.Scope | R | R2>
}
```
