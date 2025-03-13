Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapError

Returns a new channel, which is the same as this one, except the failure
value of the returned channel is created by applying the specified function
to the failure value of this channel.

**Signature**

```ts
declare const mapError: { <OutErr, OutErr2>(f: (err: OutErr) => OutErr2): <OutElem, InElem, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr2, InErr, OutDone, InDone, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutErr2>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (err: OutErr) => OutErr2): Channel<OutElem, InElem, OutErr2, InErr, OutDone, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1248)

Since v2.0.0