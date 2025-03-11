## catchAll

Returns a new channel that is the same as this one, except if this channel
errors for any typed error, then the returned channel will switch over to
using the fallback channel returned by the specified error handler.

**Signature**

```ts
declare const catchAll: { <OutErr, OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>(f: (error: OutErr) => Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>): <OutElem, InElem, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem1 | OutElem, InElem & InElem1, OutErr1, InErr & InErr1, OutDone1 | OutDone, InDone & InDone1, Env1 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (error: OutErr) => Channel<OutElem1, InElem1, OutErr1, InErr1, OutDone1, InDone1, Env1>): Channel<OutElem | OutElem1, InElem & InElem1, OutErr1, InErr & InErr1, OutDone | OutDone1, InDone & InDone1, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L285)

Since v2.0.0