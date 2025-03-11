## orElse

Returns a new channel that will perform the operations of this one, until
failure, and then it will switch over to the operations of the specified
fallback channel.

**Signature**

```ts
declare const orElse: { <OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>(that: LazyArg<Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>>): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem1 | OutElem, InElem & InElem1, OutErr1, InErr & InErr1, OutDone1 | OutDone, InDone & InDone1, Env1 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, that: LazyArg<Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>>): Channel<OutElem | OutElem1, InElem & InElem1, OutErr1, InErr & InErr1, OutDone | OutDone1, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1664)

Since v2.0.0