# runForEachScoped

Like `Stream.forEach`, but returns a scoped effect so the finalization
order can be controlled.

To import and use `runForEachScoped` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.runForEachScoped
```

**Signature**

```ts
export declare const runForEachScoped: {
  <A, R2, E2, _>(f: (a: A) => Effect.Effect<R2, E2, _>): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R2 | R, E2 | E, void>
  <R, E, A, R2, E2, _>(self: Stream<R, E, A>, f: (a: A) => Effect.Effect<R2, E2, _>): Effect.Effect<
    Scope.Scope | R | R2,
    E | E2,
    void
  >
}
```
