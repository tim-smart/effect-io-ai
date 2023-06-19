# run

Runs a channel until the end is received.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const run: <Env, InErr, InDone, OutErr, OutDone>(
  self: Channel<Env, InErr, unknown, InDone, OutErr, never, OutDone>
) => Effect.Effect<Env, OutErr, OutDone>
```
