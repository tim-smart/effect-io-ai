Package: `effect`<br />
Module: `Channel`<br />

## Channel.toSink

Converts this channel to a `Sink`.

**Signature**

```ts
declare const toSink: <OutElem, InElem, OutErr, InErr, OutDone, Env>(self: Channel<Chunk.Chunk<OutElem>, Chunk.Chunk<InElem>, OutErr, InErr, OutDone, unknown, Env>) => Sink.Sink<OutDone, InElem, OutElem, OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2097)

Since v2.0.0