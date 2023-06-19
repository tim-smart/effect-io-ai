# runDrain

Runs a channel until the end is received.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const runDrain: <Env, InErr, InDone, OutElem, OutErr, OutDone>(
  self: Channel<Env, InErr, unknown, InDone, OutErr, OutElem, OutDone>
) => Effect.Effect<Env, OutErr, OutDone>
```
