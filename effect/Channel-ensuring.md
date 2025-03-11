## ensuring

Returns a new channel with an attached finalizer. The finalizer is
guaranteed to be executed so long as the channel begins execution (and
regardless of whether or not it completes).

**Signature**

```ts
declare const ensuring: { <Z, Env1>(finalizer: Effect.Effect<Z, never, Env1>): <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>) => Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env1 | Env>; <OutElem, InElem, OutErr, InErr, OutDone, InDone, Env, Z, Env1>(self: Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env>, finalizer: Effect.Effect<Z, never, Env1>): Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, Env | Env1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L728)

Since v2.0.0