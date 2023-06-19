# collectEffect

Performs an effectful filter and map in a single step.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const collectEffect: {
  <A, R2, E2, A2>(pf: (a: A) => Option.Option<Effect.Effect<R2, E2, A2>>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, pf: (a: A) => Option.Option<Effect.Effect<R2, E2, A2>>): Stream<
    R | R2,
    E | E2,
    A2
  >
}
```
