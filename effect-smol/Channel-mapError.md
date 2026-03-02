Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapError

Returns a new channel, which is the same as this one, except the failure
value of the returned channel is created by applying the specified function
to the failure value of this channel.

**Signature**

```ts
declare const mapError: { <OutErr, OutErr2>(f: (err: OutErr) => OutErr2): <OutElem, OutDone, InElem, InErr, InDone, Env>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>) => Channel<OutElem, OutErr2, OutDone, InElem, InErr, InDone, Env>; <OutElem, OutErr, OutDone, InElem, InErr, InDone, Env, OutErr2>(self: Channel<OutElem, OutErr, OutDone, InElem, InErr, InDone, Env>, f: (err: OutErr) => OutErr2): Channel<OutElem, OutErr2, OutDone, InElem, InErr, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L5176)

Since v2.0.0