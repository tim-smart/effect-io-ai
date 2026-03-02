Package: `effect`<br />
Module: `Channel`<br />

## Channel.interruptWhen

Returns a new channel, which is the same as this one, except it will be
interrupted when the specified effect completes. If the effect completes
successfully before the underlying channel is done, then the returned
channel will yield the success value of the effect as its terminal value.
On the other hand, if the underlying channel finishes first, then the
returned channel will yield the success value of the underlying channel as
its terminal value.

**Signature**

```ts
declare const interruptWhen: { <OutDone2, OutErr2, Env2>(effect: Effect.Effect<OutDone2, OutErr2, Env2>): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | OutErr2, OutDone | OutDone2, InElem, InErr, InDone, Env2 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutDone2, OutErr2, Env2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, effect: Effect.Effect<OutDone2, OutErr2, Env2>): Channel<OutElem, OutErr | OutErr2, OutDone | OutDone2, InElem, InErr, InDone, Env2 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6329)

Since v2.0.0