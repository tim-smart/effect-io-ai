## mergeOutWith

Returns a new channel which merges a number of channels emitted by this
channel using the back pressuring merge strategy and uses a given function
to merge each completed subchannel's result value. See
`Channel.mergeAll`.

**Signature**

```ts
declare const mergeOutWith: { <OutDone1>(n: number, f: (o1: OutDone1, o2: OutDone1) => OutDone1): <OutElem1, InElem1, OutErr1, InErr1, InDone1, Env1, InElem, OutErr, InErr, InDone, Env>(self: Channel<Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>, InElem, OutErr, InErr, OutDone1, InDone, Env>) => Channel<OutElem1, InElem & InElem1, OutErr1 | OutErr, InErr & InErr1, OutDone1, InDone & InDone1, Env1 | Env>; <OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1, InElem, OutErr, InErr, InDone, Env>(self: Channel<Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>, InElem, OutErr, InErr, OutDone1, InDone, Env>, n: number, f: (o1: OutDone1, o2: OutDone1) => OutDone1): Channel<OutElem1, InElem & InElem1, OutErr1 | OutErr, InErr & InErr1, OutDone1, InDone & InDone1, Env1 | Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1508)

Since v2.0.0