# fromIteratorSucceed

Creates a stream from an iterator

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const fromIteratorSucceed: <A>(
  iterator: IterableIterator<A>,
  maxChunkSize?: number
) => Stream<never, never, A>
```
