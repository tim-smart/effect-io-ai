# toChannel

Creates a channel from a `Stream`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const toChannel: <R, E, A>(
  stream: Stream<R, E, A>
) => Channel.Channel<R, unknown, unknown, unknown, E, Chunk.Chunk<A>, unknown>
```
