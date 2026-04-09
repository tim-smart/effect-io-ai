Package: `effect`<br />
Module: `Channel`<br />

## Channel.contextWith

Create a channel from the specified services.

**Signature**

```ts
declare const contextWith: <Env, OutElem, OutErr, OutDone, InElem, InErr, InDone, Env2>(f: (context: Context.Context<Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env2>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env | Env2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6645)

Since v2.0.0