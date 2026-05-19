Package: `effect`<br />
Module: `Channel`<br />

## Channel.onFirst

Runs an effect the first time the channel emits an output element.

The effect receives the first emitted element. The first element is still
emitted unchanged. The effect is not run if the channel completes without
emitting an element.

**Signature**

```ts
declare const onFirst: { <OutElem, A, E, R>(onFirst: (element: Types.NoInfer<OutElem>) => Effect.Effect<A, E, R>): <OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, A, E, R>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, onFirst: (element: Types.NoInfer<OutElem>) => Effect.Effect<A, E, R>): Channel<OutElem, OutErr | E, OutDone, InElem, InErr, InDone, Env | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L6799)

Since v4.0.0