## doneCollect

Returns a new channel, which is the same as this one, except that all the
outputs are collected and bundled into a tuple together with the terminal
value of this channel.

As the channel returned from this channel collects all of this channel's
output into an in- memory chunk, it is not safe to call this method on
channels that output a large or unbounded number of values.

**Signature**

```ts
declare const doneCollect: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<never, InElem, OutErr, InErr, [Chunk.Chunk<OutElem>, OutDone], InDone, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L675)

Since v2.0.0