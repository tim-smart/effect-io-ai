# emitCollect

Returns a new channel that collects the output and terminal value of this
channel, which it then writes as output of the returned channel.

To import and use `emitCollect` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.emitCollect
```

**Signature**

```ts
export declare const emitCollect: <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
) => Channel<Env, InErr, InElem, InDone, OutErr, [Chunk.Chunk<OutElem>, OutDone], void>
```
