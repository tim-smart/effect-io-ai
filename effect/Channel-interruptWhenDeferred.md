Package: `effect`<br />
Module: `Channel`<br />

## Channel.interruptWhenDeferred

Returns a new channel, which is the same as this one, except it will be
interrupted when the specified deferred is completed. If the deferred is
completed before the underlying channel is done, then the returned channel
will yield the value of the deferred. Otherwise, if the underlying channel
finishes first, then the returned channel will yield the value of the
underlying channel.

**Signature**

```ts
declare const interruptWhenDeferred: { <OutDone1, OutErr1>(deferred: Deferred.Deferred<OutDone1, OutErr1>): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr1 | OutErr, InErr, OutDone1 | OutDone, InDone, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutDone1, OutErr1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, deferred: Deferred.Deferred<OutDone1, OutErr1>): Channel<OutElem, InElem, OutErr | OutErr1, InErr, OutDone | OutDone1, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1188)

Since v2.0.0