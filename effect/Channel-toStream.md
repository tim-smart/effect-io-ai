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
export declare const toStream: <Env, OutErr, OutElem, OutDone>(
  self: Channel<Env, unknown, unknown, unknown, OutErr, Chunk.Chunk<OutElem>, OutDone>
) => Stream.Stream<Env, OutErr, OutElem>
```
