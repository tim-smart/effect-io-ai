Package: `effect`<br />
Module: `Channel`<br />

## Channel.catch

Recovers from typed channel errors by running a fallback channel.

**Signature**

```ts
declare const catch: { <OutErr, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(f: (d: OutErr) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem | OutElem1, OutErr1, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (d: OutErr) => Channel<OutElem1, OutErr1, OutDone1, InElem1, InErr1, InDone1, Env1>): Channel<OutElem | OutElem1, OutErr1, OutDone | OutDone1, InElem & InElem1, InErr & InErr1, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L4422)

Since v4.0.0