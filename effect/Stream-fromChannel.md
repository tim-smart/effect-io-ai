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
export declare const fromChannel: <R, E, A>(
  channel: Channel.Channel<R, unknown, unknown, unknown, E, Chunk.Chunk<A>, unknown>
) => Stream<R, E, A>
```
