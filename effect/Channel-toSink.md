# toSink

Converts this channel to a `Sink`.

To import and use `toSink` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.toSink
undefined

**Signature**

```ts
export declare const toSink: <OutElem, InElem, OutErr, InErr, OutDone, Env>(
  self: Channel<Chunk.Chunk<OutElem>, Chunk.Chunk<InElem>, OutErr, InErr, OutDone, unknown, Env>
) => Sink.Sink<OutDone, InElem, OutElem, OutErr, Env>
```
