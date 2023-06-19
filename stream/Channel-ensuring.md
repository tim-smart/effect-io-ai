# ensuring

Returns a new channel with an attached finalizer. The finalizer is
guaranteed to be executed so long as the channel begins execution (and
regardless of whether or not it completes).

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const ensuring: {
  <Env1, Z>(finalizer: Effect.Effect<Env1, never, Z>): <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env1 | Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, Env1, Z>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    finalizer: Effect.Effect<Env1, never, Z>
  ): Channel<Env | Env1, InErr, InElem, InDone, OutErr, OutElem, OutDone>
}
```
