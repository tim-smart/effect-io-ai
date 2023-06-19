# runFoldWhileScopedEffect

Executes an effectful fold over the stream of values. Returns a scoped
value that represents the scope of the stream. Stops the fold early when
the condition is not fulfilled.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const runFoldWhileScopedEffect: {
  <S, A, R2, E2>(s: S, cont: Predicate<S>, f: (s: S, a: A) => Effect.Effect<R2, E2, S>): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R2 | R, E2 | E, S>
  <R, E, S, A, R2, E2>(
    self: Stream<R, E, A>,
    s: S,
    cont: Predicate<S>,
    f: (s: S, a: A) => Effect.Effect<R2, E2, S>
  ): Effect.Effect<Scope.Scope | R | R2, E | E2, S>
}
```
