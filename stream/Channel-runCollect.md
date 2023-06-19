# runCollect

Run the channel until it finishes with a done value or fails with an error
and collects its emitted output elements.

The channel must not read any input.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const runCollect: <Env, InErr, InDone, OutErr, OutElem, OutDone>(
  self: Channel<Env, InErr, unknown, InDone, OutErr, OutElem, OutDone>
) => Effect.Effect<Env, OutErr, readonly [Chunk.Chunk<OutElem>, OutDone]>
```
