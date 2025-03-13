Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapInputInEffect

Returns a new channel which is the same as this one but applies the given
effectual function to the input channel's output elements.

**Signature**

```ts
declare const mapInputInEffect: { <InElem0, InElem, InErr, Env1>(f: (a: InElem0) => Effect.Effect<InElem, InErr, Env1>): <OutElem, OutErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem0, OutErr, InErr, OutDone, InDone, Env1 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, InElem0, Env1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (a: InElem0) => Effect.Effect<InElem, InErr, Env1>): Channel<OutElem, InElem0, OutErr, InErr, OutDone, InDone, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L651)

Since v2.0.0