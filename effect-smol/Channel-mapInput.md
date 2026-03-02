Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapInput

Returns a new channel which is the same as this one but applies the given
function to the input channel’s input elements.

**Signature**

```ts
declare const mapInput: { <InElem, InElem2, InErr, R = never>(f: (i: InElem2) => Effect.Effect<InElem, InErr, R>): <OutElem, OutErr, OutDone, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env | R>) => Channel<OutElem, OutErr, OutDone, InElem2, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, InElem2, R = never>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (i: InElem2) => Effect.Effect<InElem, InErr, R>): Channel<OutElem, OutErr, OutDone, InElem2, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1944)

Since v2.0.0