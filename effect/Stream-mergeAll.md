# mergeAll

Merges a variable list of streams in a non-deterministic fashion. Up to `n`
streams may be consumed in parallel and up to `outputBuffer` chunks may be
buffered by this operator.

To import and use `mergeAll` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.mergeAll
undefined

**Signature**

```ts
export declare const mergeAll: {
  (options: {
    readonly concurrency: number | "unbounded"
    readonly bufferSize?: number | undefined
  }): <A, E, R>(streams: Iterable<Stream<A, E, R>>) => Stream<A, E, R>
  <A, E, R>(
    streams: Iterable<Stream<A, E, R>>,
    options: { readonly concurrency: number | "unbounded"; readonly bufferSize?: number | undefined }
  ): Stream<A, E, R>
}
```
