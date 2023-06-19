# mergeAll

Merges a variable list of streams in a non-deterministic fashion. Up to `n`
streams may be consumed in parallel and up to `outputBuffer` chunks may be
buffered by this operator.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const mergeAll: (
  n: number,
  bufferSize?: number
) => <R, E, A>(...streams: Stream<R, E, A>[]) => Stream<R, E, A>
```
