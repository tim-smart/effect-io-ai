# ensuringWith

Returns a new channel with an attached finalizer. The finalizer is
guaranteed to be executed so long as the channel begins execution (and
regardless of whether or not it completes).

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const ensuringWith: {
  <Env2, OutErr, OutDone>(finalizer: (e: Exit.Exit<OutErr, OutDone>) => Effect.Effect<Env2, never, unknown>): <
    Env,
    InErr,
    InElem,
    InDone,
    OutElem
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env2 | Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  <Env, InErr, InElem, InDone, OutElem, Env2, OutErr, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    finalizer: (e: Exit.Exit<OutErr, OutDone>) => Effect.Effect<Env2, never, unknown>
  ): Channel<Env | Env2, InErr, InElem, InDone, OutErr, OutElem, OutDone>
}
```
