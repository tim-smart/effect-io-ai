Package: `effect`<br />
Module: `Channel`<br />

## Channel.tapError

Runs an effect when the channel fails with a typed error, then preserves the
original channel failure.

**Details**

The effect is not run for normal channel completion. If the observer effect
fails, that failure can fail the returned channel.

**Signature**

```ts
declare const tapError: { <OutErr, A, E, R>(f: (d: OutErr) => Effect.Effect<A, E, R>): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | E, OutDone | void, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, A, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (d: OutErr) => Effect.Effect<A, E, R>): Channel<OutElem, OutErr | E, OutDone | void, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L4489)

Since v4.0.0