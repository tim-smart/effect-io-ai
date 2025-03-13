Package: `effect`<br />
Module: `Channel`<br />

## Channel.pipeToOrFail

Returns a new channel that pipes the output of this channel into the
specified channel and preserves this channel's failures without providing
them to the other channel for observation.

**Signature**

```ts
declare const pipeToOrFail: { <OutElem2, OutElem, OutErr2, OutDone2, OutDone, Env2>(that: Channel<OutElem2, OutElem, OutErr2, never, OutDone2, OutDone, Env2>): <InElem, OutErr, InErr, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem2, InElem, OutErr2 | OutErr, InErr, OutDone2, InDone, Env2 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutElem2, OutErr2, OutDone2, Env2>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, that: Channel<OutElem2, OutElem, OutErr2, never, OutDone2, OutDone, Env2>): Channel<OutElem2, InElem, OutErr | OutErr2, InErr, OutDone2, InDone, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1721)

Since v2.0.0