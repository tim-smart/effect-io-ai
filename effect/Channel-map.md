## map

Returns a new channel, which is the same as this one, except the terminal
value of the returned channel is created by applying the specified function
to the terminal value of this channel.

**Signature**

```ts
declare const map: { <OutDone, OutDone2>(f: (out: OutDone) => OutDone2): <OutElem, InElem, OutErr, InErr, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone2, InDone, Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutDone2>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (out: OutDone) => OutDone2): Channel<OutElem, InElem, OutErr, InErr, OutDone2, InDone, Env>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1208)

Since v2.0.0