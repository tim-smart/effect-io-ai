# toSink

Converts this channel to a `Sink`.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const toSink: <Env, InErr, InElem, OutErr, OutElem, OutDone>(
  self: Channel<Env, InErr, Chunk.Chunk<InElem>, unknown, OutErr, Chunk.Chunk<OutElem>, OutDone>
) => Sink.Sink<Env, OutErr, InElem, OutElem, OutDone>
```
