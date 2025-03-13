Package: `effect`<br />
Module: `Channel`<br />

## Channel.repeated

Creates a channel which repeatedly runs this channel.

**Signature**

```ts
declare const repeated: <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1919)

Since v2.0.0