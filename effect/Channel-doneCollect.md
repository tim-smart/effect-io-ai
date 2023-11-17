# doneCollect

Returns a new channel, which is the same as this one, except that all the
outputs are collected and bundled into a tuple together with the terminal
value of this channel.

As the channel returned from this channel collects all of this channel's
output into an in- memory chunk, it is not safe to call this method on
channels that output a large or unbounded number of values.

To import and use `doneCollect` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.doneCollect
```

**Signature**

```ts
export declare const doneCollect: <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
) => Channel<Env, InErr, InElem, InDone, OutErr, never, [Chunk.Chunk<OutElem>, OutDone]>
```
