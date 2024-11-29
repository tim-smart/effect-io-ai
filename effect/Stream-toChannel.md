# toChannel

Creates a channel from a `Stream`.

To import and use `toChannel` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.toChannel
undefined

**Signature**

```ts
export declare const toChannel: <A, E, R>(
  stream: Stream<A, E, R>
) => Channel.Channel<Chunk.Chunk<A>, unknown, E, unknown, unknown, unknown, R>
```
