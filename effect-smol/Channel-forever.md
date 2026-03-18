Package: `effect`<br />
Module: `Channel`<br />

## Channel.forever

Repeats this channel forever.

**Signature**

```ts
declare const forever: <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr, never, InElem, InErr, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L2941)

Since v4.0.0