## interruptWhen

Returns a new channel, which is the same as this one, except it will be
interrupted when the specified effect completes. If the effect completes
successfully before the underlying channel is done, then the returned
channel will yield the success value of the effect as its terminal value.
On the other hand, if the underlying channel finishes first, then the
returned channel will yield the success value of the underlying channel as
its terminal value.

**Signature**

```ts
declare const interruptWhen: { <OutDone1, OutErr1, Env1>(effect: Effect.Effect<OutDone1, OutErr1, Env1>): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr1 | OutErr, InErr, OutDone1 | OutDone, InDone, Env1 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutDone1, OutErr1, Env1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, effect: Effect.Effect<OutDone1, OutErr1, Env1>): Channel<OutElem, InElem, OutErr | OutErr1, InErr, OutDone | OutDone1, InDone, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1165)

Since v2.0.0