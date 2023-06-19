# zipLeft

Zips this stream with another point-wise, but keeps only the outputs of
this stream.

The new stream will end when one of the sides ends.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const zipLeft: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<R | R2, E | E2, A>
}
```
