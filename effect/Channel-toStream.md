## toStream

Converts this channel to a `Stream`.

**Signature**

```ts
declare const toStream: <OutElem, OutErr, OutDone, Env>(self: Channel<Chunk.Chunk<OutElem>, unknown, OutErr, unknown, OutDone, unknown, Env>) => Stream.Stream<OutElem, OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2107)

Since v2.0.0