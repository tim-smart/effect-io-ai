Package: `effect`<br />
Module: `Channel`<br />

## Channel.haltWhen

Stops a channel when the specified effect completes or fails.

**Details**

If the effect completes before the channel is done, its success value becomes
the returned channel's done value. If the effect fails, the returned channel
fails with that error. If the channel completes first, the channel's done
value is preserved.

**Signature**

```ts
declare const haltWhen: { <OutDone2, OutErr2, Env2>(effect: Effect.Effect<OutDone2, OutErr2, Env2>): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | OutErr2, OutDone | OutDone2, InElem, InErr, InDone, Env2 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutDone2, OutErr2, Env2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, effect: Effect.Effect<OutDone2, OutErr2, Env2>): Channel<OutElem, OutErr | OutErr2, OutDone | OutDone2, InElem, InErr, InDone, Env2 | Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L6902)

Since v4.0.0