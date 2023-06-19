# map

Transforms the elements of this stream using the supplied function.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <R, E>(self: Stream<R, E, A>) => Stream<R, E, B>
  <R, E, A, B>(self: Stream<R, E, A>, f: (a: A) => B): Stream<R, E, B>
}
```
