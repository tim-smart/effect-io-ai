# fromChannel

Creates a stream from a `Channel`.

To import and use `fromChannel` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromChannel
```

**Signature**

```ts
export declare const fromChannel: <A, E, R>(
  channel: Channel.Channel<Chunk.Chunk<A>, unknown, E, unknown, unknown, unknown, R>
) => Stream<A, E, R>
```
