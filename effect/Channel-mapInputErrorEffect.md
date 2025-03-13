Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapInputErrorEffect

Returns a new channel which is the same as this one but applies the given
effectual function to the input channel's error value.

**Signature**

```ts
declare const mapInputErrorEffect: { <InErr0, InDone, InErr, Env1>(f: (error: InErr0) => Effect.Effect<InDone, InErr, Env1>): <OutElem, InElem, OutErr, OutDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr0, OutDone, InDone, Env1 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, InErr0, Env1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (error: InErr0) => Effect.Effect<InDone, InErr, Env1>): Channel<OutElem, InElem, OutErr, InErr0, OutDone, InDone, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L613)

Since v2.0.0