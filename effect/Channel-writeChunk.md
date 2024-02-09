# writeChunk

Writes a `Chunk` of values to the channel.

To import and use `writeChunk` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.writeChunk
```

**Signature**

```ts
export declare const writeChunk: <OutElem>(
  outs: Chunk.Chunk<OutElem>
) => Channel<OutElem, unknown, never, unknown, void, unknown, never>
```
