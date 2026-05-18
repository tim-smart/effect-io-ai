Package: `effect`<br />
Module: `Channel`<br />

## Channel.tapCause

Runs an effect with the full failure `Cause` when the channel fails, then
fails the returned channel with the original cause.

Use this for observing failures, such as logging or metrics. If the observer
effect fails, that failure can fail the returned channel.

**Signature**

```ts
declare const tapCause: { <OutErr, A, E, R>(f: (d: Cause.Cause<OutErr>) => Effect.Effect<A, E, R>): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | E, OutDone | void, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, A, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (d: Cause.Cause<OutErr>) => Effect.Effect<A, E, R>): Channel<OutElem, OutErr | E, OutDone | void, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L3921)

Since v4.0.0