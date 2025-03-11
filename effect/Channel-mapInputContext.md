## mapInputContext

Transforms the context being provided to the channel with the specified
function.

**Signature**

```ts
declare const mapInputContext: { <Env0, Env>(f: (env: Context.Context<Env0>) => Context.Context<Env>): <OutElem, InElem, OutErr, InErr, OutDone, InDone>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env0>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, Env0>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (env: Context.Context<Env0>) => Context.Context<Env>): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env0>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1777)

Since v2.0.0