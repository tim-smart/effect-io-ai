# accumulate

Collects each underlying Chunk of the stream into a new chunk, and emits it
on each pull.

To import and use `accumulate` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.accumulate
undefined

**Signature**

```ts
export declare const accumulate: <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
```
