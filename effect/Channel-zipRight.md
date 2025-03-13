Package: `effect`<br />
Module: `Channel`<br />

## Channel.zipRight

Returns a new channel that is the sequential composition of this channel
and the specified channel. The returned channel terminates with the
terminal value of that channel.

**Signature**

```ts
declare const zipRight: { <Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>(that: Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>, options?: { readonly concurrent?: boolean | undefined; }): <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem1 | OutElem, InElem & InElem1, OutErr1 | OutErr, InErr & InErr1, OutDone1, InDone & InDone1, Env1 | Env>; <Env, InErr, InElem, InDone, OutErr, OutElem, OutDone, Env1, InErr1, InElem1, InDone1, OutErr1, OutElem1, OutDone1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, that: Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>, options?: { readonly concurrent?: boolean | undefined; }): Channel<OutElem | OutElem1, InElem & InElem1, OutErr | OutErr1, InErr & InErr1, OutDone1, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2305)

Since v2.0.0