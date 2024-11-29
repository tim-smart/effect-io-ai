# runCollect

Run the channel until it finishes with a done value or fails with an error
and collects its emitted output elements.

The channel must not read any input.

To import and use `runCollect` from the "Channel" module:

ts
import \* as Channel from "effect/Channel"
// Can be accessed like this
Channel.runCollect
undefined

**Signature**

```ts
export declare const runCollect: <OutElem, OutErr, InErr, OutDone, InDone, Env>(
  self: Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, Env>
) => Effect.Effect<[Chunk.Chunk<OutElem>, OutDone], OutErr, Exclude<Env, Scope.Scope>>
```
