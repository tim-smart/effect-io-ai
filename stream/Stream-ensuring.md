# ensuring

Executes the provided finalizer after this stream's finalizers run.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const ensuring: {
  <R2, _>(finalizer: Effect.Effect<R2, never, _>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E, A>
  <R, E, A, R2, _>(self: Stream<R, E, A>, finalizer: Effect.Effect<R2, never, _>): Stream<R | R2, E, A>
}
```
