Package: `effect`<br />
Module: `Channel`<br />

## Channel.onStart

Runs an effect before the channel starts.

**Details**

The effect's successful value is ignored. If the effect fails, the returned
channel fails before running the source channel.

**Signature**

```ts
declare const onStart: { <A, E, R>(onStart: Effect.Effect<A, E, R>): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, A, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, onStart: Effect.Effect<A, E, R>): Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6998)

Since v4.0.0