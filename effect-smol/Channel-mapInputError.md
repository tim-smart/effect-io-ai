Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapInputError

Returns a new channel which is the same as this one but applies the given
function to the input errors.

**Signature**

```ts
declare const mapInputError: { <InErr, InErr2, R = never>(f: (i: InErr2) => Effect.Effect<InErr, InErr, R>): <OutElem, OutErr, OutDone, InElem, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env | R>) => Channel<OutElem, OutErr, OutDone, InElem, InErr2, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, InErr2, R = never>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (i: InErr2) => Effect.Effect<InErr, InErr, R>): Channel<OutElem, OutErr, OutDone, InElem, InErr2, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1982)

Since v2.0.0