# toSink

Converts this channel to a `Sink`.

To import and use `toSink` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.toSink
```

**Signature**

```ts
export declare const toSink: <Env, InErr, InElem, OutErr, OutElem, OutDone>(
  self: Channel<Env, InErr, Chunk.Chunk<InElem>, unknown, OutErr, Chunk.Chunk<OutElem>, OutDone>
) => Sink.Sink<Env, OutErr, InElem, OutElem, OutDone>
```
