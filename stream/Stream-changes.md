# changes

Returns a new stream that only emits elements that are not equal to the
previous element emitted, using natural equality to determine whether two
elements are equal.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const changes: <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
```
