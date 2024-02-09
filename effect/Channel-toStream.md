# toStream

Converts this channel to a `Stream`.

To import and use `toStream` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.toStream
```

**Signature**

```ts
export declare const toStream: <OutElem, OutErr, OutDone, Env>(
  self: Channel<Chunk.Chunk<OutElem>, unknown, OutErr, unknown, OutDone, unknown, Env>
) => Stream.Stream<OutElem, OutErr, Env>
```
