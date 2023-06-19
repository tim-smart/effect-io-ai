# bufferSliding

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` elements in a sliding queue.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const bufferSliding: {
  (capacity: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, capacity: number): Stream<R, E, A>
}
```
