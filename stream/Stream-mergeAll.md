# mergeAll

Merges a variable list of streams in a non-deterministic fashion. Up to `n`
streams may be consumed in parallel and up to `outputBuffer` chunks may be
buffered by this operator.

To import and use `mergeAll` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mergeAll
```

**Signature**

```ts
export declare const mergeAll: {
  (options: { readonly concurrency: number | 'unbounded'; readonly bufferSize?: number }): <R, E, A>(
    streams: Iterable<Stream<R, E, A>>
  ) => Stream<R, E, A>
  <R, E, A>(
    streams: Iterable<Stream<R, E, A>>,
    options: { readonly concurrency: number | 'unbounded'; readonly bufferSize?: number }
  ): Stream<R, E, A>
}
```
