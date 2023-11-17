# fromIteratorSucceed

Creates a stream from an iterator

To import and use `fromIteratorSucceed` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromIteratorSucceed
```

**Signature**

```ts
export declare const fromIteratorSucceed: <A>(
  iterator: IterableIterator<A>,
  maxChunkSize?: number
) => Stream<never, never, A>
```
