# runCollect

Run the channel until it finishes with a done value or fails with an error
and collects its emitted output elements.

The channel must not read any input.

To import and use `runCollect` from the "Channel" module:

```ts
import * as Channel from "effect/Channel"
// Can be accessed like this
Channel.runCollect
```

**Signature**

```ts
export declare const runCollect: <Env, InErr, InDone, OutErr, OutElem, OutDone>(
  self: Channel<Env, InErr, unknown, InDone, OutErr, OutElem, OutDone>
) => Effect.Effect<Env, OutErr, [Chunk.Chunk<OutElem>, OutDone]>
```
