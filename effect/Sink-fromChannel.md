# fromChannel

Creates a sink from a `Channel`.

To import and use `fromChannel` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.fromChannel
```

**Signature**

```ts
export declare const fromChannel: <L, In, E, A, R>(
  channel: Channel.Channel<Chunk.Chunk<L>, Chunk.Chunk<In>, E, never, A, unknown, R>
) => Sink<A, In, L, E, R>
```
