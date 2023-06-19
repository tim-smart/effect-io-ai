# provideContext

Provides the channel with its required context, which eliminates its
dependency on `Env`.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const provideContext: {
  <Env>(env: Context.Context<Env>): <InErr, InElem, InDone, OutErr, OutElem, OutDone>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  ) => Channel<never, InErr, InElem, InDone, OutErr, OutElem, OutDone>
  <InErr, InElem, InDone, OutErr, OutElem, OutDone, Env>(
    self: Channel<Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>,
    env: Context.Context<Env>
  ): Channel<never, InErr, InElem, InDone, OutErr, OutElem, OutDone>
}
```
