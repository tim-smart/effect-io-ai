# mapConcat

Maps each element to an iterable, and flattens the iterables into the
output of this stream.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const mapConcat: {
  <A, A2>(f: (a: A) => Iterable<A2>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, A2>
  <R, E, A, A2>(self: Stream<R, E, A>, f: (a: A) => Iterable<A2>): Stream<R, E, A2>
}
```
