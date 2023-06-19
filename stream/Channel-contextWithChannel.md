# contextWithChannel

Accesses the context of the channel in the context of a channel.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const contextWithChannel: <Env, Env1, InErr, InElem, InDone, OutErr, OutElem, OutDone>(
  f: (env: Context.Context<Env>) => Channel<Env1, InErr, InElem, InDone, OutErr, OutElem, OutDone>
) => Channel<Env | Env1, InErr, InElem, InDone, OutErr, OutElem, OutDone>
```
