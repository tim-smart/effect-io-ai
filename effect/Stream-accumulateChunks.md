# accumulateChunks

Re-chunks the elements of the stream by accumulating each underlying chunk.

To import and use `accumulateChunks` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.accumulateChunks
undefined

**Signature**

```ts
export declare const accumulateChunks: <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
```
