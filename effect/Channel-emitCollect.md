Package: `effect`<br />
Module: `Channel`<br />

## Channel.emitCollect

Returns a new channel that collects the output and terminal value of this
channel, which it then writes as output of the returned channel.

**Signature**

```ts
declare const emitCollect: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<[Chunk.Chunk<OutElem>, OutDone], InElem, OutErr, InErr, void, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L716)

Since v2.0.0