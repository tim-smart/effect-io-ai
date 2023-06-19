# contramapContext

Transforms the context being provided to the channel with the specified
function.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const contramapContext: {
  <Env0, Env>(f: (env: Context.Context<Env0>) => Context.Context<Env>): <
    InErr,
    InElem,
    InDone,
    OutErr,
    OutElem,
    OutDone
  >(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<Env0, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  <InErr, InElem, InDone, OutErr, OutElem, OutDone, Env0, Env>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    f: (env: Context.Context<Env0>) => Context.Context<Env>
  ): Channel<Env0, InErr, InElem, InDone, OutErr, OutElem, OutDone>
}
```
