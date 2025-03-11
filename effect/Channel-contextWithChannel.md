## contextWithChannel

Accesses the context of the channel in the context of a channel.

**Signature**

```ts
declare const contextWithChannel: <Env, OutElem, InElem, OutErr, InErr, OutDone, InDone, Env1>(f: (env: Context.Context<Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env1>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env | Env1>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L785)

Since v2.0.0