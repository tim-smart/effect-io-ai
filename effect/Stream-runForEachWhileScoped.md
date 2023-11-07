# runForEachWhileScoped

Like `Stream.runForEachWhile`, but returns a scoped effect so the
finalization order can be controlled.

To import and use `runForEachWhileScoped` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.runForEachWhileScoped
```

**Signature**

```ts
export declare const runForEachWhileScoped: {
  <A, R2, E2>(f: (a: A) => Effect.Effect<R2, E2, boolean>): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R2 | R, E2 | E, void>
  <R, E, A, R2, E2>(self: Stream<R, E, A>, f: (a: A) => Effect.Effect<R2, E2, boolean>): Effect.Effect<
    Scope.Scope | R | R2,
    E | E2,
    void
  >
}
```
