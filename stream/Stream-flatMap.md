# flatMap

Returns a stream made of the concatenation in strict order of all the
streams produced by passing each element of this stream to `f0`

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flatMap: {
  <A, R2, E2, A2>(f: (a: A) => Stream<R2, E2, A2>): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, f: (a: A) => Stream<R2, E2, A2>): Stream<R | R2, E | E2, A2>
}
```
