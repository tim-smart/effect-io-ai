# toChannel

Creates a `Channel` from a Sink.

To import and use `toChannel` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.toChannel
undefined

**Signature**

```ts
export declare const toChannel: <A, In, L, E, R>(
  self: Sink<A, In, L, E, R>
) => Channel.Channel<Chunk.Chunk<L>, Chunk.Chunk<In>, E, never, A, unknown, R>
```
