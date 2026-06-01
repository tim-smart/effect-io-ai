Package: `effect`<br />
Module: `Channel`<br />

## Channel.onError

Attaches a finalizer that runs only when the channel exits with failure.

**Details**

The finalizer receives the failure `Cause`. The original channel failure is
preserved. The finalizer itself must not fail.

**Signature**

```ts
declare const onError: { <OutDone, OutErr, Env2>(finalizer: (cause: Cause.Cause<OutErr>) => Effect.Effect<unknown, never, Env2>): <OutElem, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env2 | Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, Env2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, finalizer: (cause: Cause.Cause<OutErr>) => Effect.Effect<unknown, never, Env2>): Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env2 | Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7003)

Since v4.0.0