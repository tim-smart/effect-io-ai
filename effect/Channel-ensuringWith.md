Package: `effect`<br />
Module: `Channel`<br />

## Channel.ensuringWith

Returns a new channel with an attached finalizer. The finalizer is
guaranteed to be executed so long as the channel begins execution (and
regardless of whether or not it completes).

**Signature**

```ts
declare const ensuringWith: { <OutDone, OutErr, Env2>(finalizer: (e: Exit.Exit<OutDone, OutErr>) => Effect.Effect<unknown, never, Env2>): <OutElem, InElem, InErr, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env2 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, Env2>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, finalizer: (e: Exit.Exit<OutDone, OutErr>) => Effect.Effect<unknown, never, Env2>): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L748)

Since v2.0.0