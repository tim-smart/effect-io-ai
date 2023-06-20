# fromChannel

Creates a sink from a `Channel`.

To import and use `fromChannel` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.fromChannel
```

**Signature**

```ts
export declare const fromChannel: <R, E, In, L, Z>(
  channel: Channel.Channel<R, never, Chunk.Chunk<In>, unknown, E, Chunk.Chunk<L>, Z>
) => Sink<R, E, In, L, Z>
```
