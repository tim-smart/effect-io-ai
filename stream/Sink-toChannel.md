# toChannel

Creates a `Channel` from a Sink.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const toChannel: <R, E, In, L, Z>(
  self: Sink<R, E, In, L, Z>
) => Channel.Channel<R, never, Chunk.Chunk<In>, unknown, E, Chunk.Chunk<L>, Z>
```
