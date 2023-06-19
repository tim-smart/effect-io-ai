# tap

Adds an effect to consumption of every element of the stream.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const tap: {
  <A, R2, E2, _>(f: (a: A) => Effect.Effect<R2, E2, _>): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2, _>(self: Stream<R, E, A>, f: (a: A) => Effect.Effect<R2, E2, _>): Stream<R | R2, E | E2, A>
}
```
