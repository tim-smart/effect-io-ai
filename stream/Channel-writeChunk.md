# writeChunk

Writes a `Chunk` of values to the channel.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const writeChunk: <OutElem>(
  outs: Chunk.Chunk<OutElem>
) => Channel<never, unknown, unknown, unknown, never, OutElem, void>
```
