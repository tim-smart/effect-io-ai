Package: `effect`<br />
Module: `Channel`<br />

## Channel.runCollect

Run the channel until it finishes with a done value or fails with an error
and collects its emitted output elements.

The channel must not read any input.

**Signature**

```ts
declare const runCollect: <OutElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, Env>) => Effect.Effect<[Chunk.Chunk<OutElem>, OutDone], OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1942)

Since v2.0.0