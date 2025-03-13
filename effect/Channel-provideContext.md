Package: `effect`<br />
Module: `Channel`<br />

## Channel.provideContext

Provides the channel with its required context, which eliminates its
dependency on `Env`.

**Signature**

```ts
declare const provideContext: { <Env>(env: Context.Context<Env>): <OutElem, InElem, OutErr, InErr, OutDone, InDone>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, never>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, env: Context.Context<Env>): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, never>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1740)

Since v2.0.0