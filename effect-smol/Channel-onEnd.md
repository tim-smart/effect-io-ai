Package: `effect`<br />
Module: `Channel`<br />

## Channel.onEnd

Runs an effect when the channel completes successfully.

**Details**

The effect runs before the original done value is propagated. The effect is
not run when the channel fails. If the effect fails, the returned channel
fails with that error.

**Signature**

```ts
declare const onEnd: { <A, E, R>(onEnd: Effect.Effect<A, E, R>): <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, A, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, onEnd: Effect.Effect<A, E, R>): Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7147)

Since v4.0.0