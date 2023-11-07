# toChannel

Creates a `Channel` from a Sink.

To import and use `toChannel` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.toChannel
```

**Signature**

```ts
export declare const toChannel: <R, E, In, L, Z>(
  self: Sink<R, E, In, L, Z>
) => Channel.Channel<R, never, Chunk.Chunk<In>, unknown, E, Chunk.Chunk<L>, Z>
```
