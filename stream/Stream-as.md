# as

Maps the success values of this stream to the specified constant value.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const as: {
  <B>(value: B): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, B>
  <R, E, A, B>(self: Stream<R, E, A>, value: B): Stream<R, E, B>
}
```
