# toChannel

Creates a channel from a `Stream`.

To import and use `toChannel` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.toChannel
```

**Signature**

```ts
export declare const toChannel: <R, E, A>(
  stream: Stream<R, E, A>
) => Channel.Channel<R, unknown, unknown, unknown, E, Chunk.Chunk<A>, unknown>
```
