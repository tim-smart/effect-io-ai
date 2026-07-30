Package: `effect`<br />
Module: `Channel`<br />

## Channel.concatOut

Returns a new channel, which is the concatenation of all the channels that
are written out by this channel. This method may only be called on channels
that output other channels.

**Signature**

```ts
declare const concatOut: <OutElem, InElem, OutErr, InErr, InDone, Env, OutDone>(self: Channel<Channel<OutElem, InElem, OutErr, InErr, unknown, InDone, Env>, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, unknown, InDone, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L537)

Since v2.0.0