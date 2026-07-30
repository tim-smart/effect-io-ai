Package: `effect`<br />
Module: `Channel`<br />

## Channel.mapEffect

Returns a new channel, which is the same as this one, except the terminal
value of the returned channel is created by applying the specified
effectful function to the terminal value of this channel.

**Signature**

```ts
declare const mapEffect: { <OutDone, OutDone1, OutErr1, Env1>(f: (o: OutDone) => Effect.Effect<OutDone1, OutErr1, Env1>): <OutElem, InElem, OutErr, InErr, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr1 | OutErr, InErr, OutDone1, InDone, Env1 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, OutDone1, OutErr1, Env1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, f: (o: OutDone) => Effect.Effect<OutDone1, OutErr1, Env1>): Channel<OutElem, InElem, OutErr | OutErr1, InErr, OutDone1, InDone, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1228)

Since v2.0.0