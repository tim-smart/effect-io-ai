Package: `effect`<br />
Module: `Channel`<br />

## Channel.mergeOut

Returns a new channel which merges a number of channels emitted by this
channel using the back pressuring merge strategy. See `Channel.mergeAll`.

**Signature**

```ts
declare const mergeOut: { (n: number): <OutElem1, InElem1, OutErr1, InErr1, Z, InDone1, Env1, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<Channel<OutElem1, InElem1, OutErr1, InErr1, Z, InDone1, Env1>, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem1, InElem & InElem1, OutErr1 | OutErr, InErr & InErr1, unknown, InDone & InDone1, Env1 | Env>; <OutElem1, InElem1, OutErr1, InErr1, Z, InDone1, Env1, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<Channel<OutElem1, InElem1, OutErr1, InErr1, Z, InDone1, Env1>, InElem, OutErr, InErr, OutDone, InDone, Env>, n: number): Channel<OutElem1, InElem & InElem1, OutErr1 | OutErr, InErr & InErr1, unknown, InDone & InDone1, Env1 | Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1471)

Since v2.0.0