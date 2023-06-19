# zipAll

Zips this stream with another point-wise, creating a new stream of pairs of
elements from both sides.

The defaults `defaultLeft` and `defaultRight` will be used if the streams
have different lengths and one of the streams has ended before the other.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const zipAll: {
  <R2, E2, A2, A>(that: Stream<R2, E2, A2>, defaultLeft: A, defaultRight: A2): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, readonly [A, A2]>
  <R, E, R2, E2, A2, A>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>, defaultLeft: A, defaultRight: A2): Stream<
    R | R2,
    E | E2,
    readonly [A, A2]
  >
}
```
