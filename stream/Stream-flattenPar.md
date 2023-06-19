# flattenPar

Flattens a stream of streams into a stream by executing a non-deterministic
concurrent merge. Up to `n` streams may be consumed in parallel and up to
`outputBuffer` elements may be buffered by this operator.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flattenPar: {
  (n: number): <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>) => Stream<R | R2, E | E2, A>
  <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>, n: number): Stream<R | R2, E | E2, A>
}
```
