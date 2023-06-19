# mapEffect

Maps over elements of the stream with the specified effectful function.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const mapEffect: {
  <A, R2, E2, A2>(f: (a: A) => Effect.Effect<R2, E2, A2>): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, f: (a: A) => Effect.Effect<R2, E2, A2>): Stream<R | R2, E | E2, A2>
}
```
