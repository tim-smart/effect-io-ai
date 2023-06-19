# concatAll

Concat sequentially a channel of channels.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const concatAll: <Env, InErr, InElem, InDone, OutErr, OutElem>(
  channels: Channel<Env, InErr, InElem, InDone, OutErr, Channel<Env, InErr, InElem, InDone, OutErr, OutElem, any>, any>
) => Channel<Env, InErr, InElem, InDone, OutErr, OutElem, any>
```
