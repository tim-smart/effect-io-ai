Package: `effect`<br />
Module: `Channel`<br />

## Channel.interruptWhen

Interrupts a channel when another effect completes.

**When to use**

Use to race channel execution against an external effect whose success can
become the channel's done value.

**Details**

If the effect completes first, its success value becomes the returned
channel's done value. If the channel completes first, the original channel's
done value is preserved.

**Signature**

```ts
declare const interruptWhen: { <OutDone2, OutErr2, Env2>(effect: Effect.Effect<OutDone2, OutErr2, Env2>): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | OutErr2, OutDone | OutDone2, InElem, InErr, InDone, Env2 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutDone2, OutErr2, Env2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, effect: Effect.Effect<OutDone2, OutErr2, Env2>): Channel<OutElem, OutErr | OutErr2, OutDone | OutDone2, InElem, InErr, InDone, Env2 | Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L6869)

Since v2.0.0