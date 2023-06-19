# flattenParBuffer

Like `flattenPar`, but with a configurable `bufferSize` parameter.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flattenParBuffer: {
  (n: number, bufferSize: number): <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>) => Stream<R | R2, E | E2, A>
  <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>, n: number, bufferSize: number): Stream<R | R2, E | E2, A>
}
```
