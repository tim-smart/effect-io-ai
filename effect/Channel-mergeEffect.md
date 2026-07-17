Package: `effect`<br />
Module: `Channel`<br />

## Channel.mergeEffect

Runs an effect concurrently with a channel while emitting only the channel's
output elements.

**When to use**

Use when a side effect should run for the lifetime of a channel and only the
channel's output elements should be emitted.

**Details**

The effect's successful value is ignored. If the effect fails while the
channel is running, the returned channel fails with that error.

**Signature**

```ts
declare const mergeEffect: { <X, E, R>(effect: Effect.Effect<X, E, R>): <OutElem, OutDone, OutErr, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, X, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, effect: Effect.Effect<X, E, R>): Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L6283)

Since v4.0.0