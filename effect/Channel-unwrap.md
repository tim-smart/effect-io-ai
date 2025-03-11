## unwrap

Constructs a `Channel` from an effect that will result in a `Channel` if
successful.

**Signature**

```ts
declare const unwrap: <OutElem, InElem, OutErr, InErr, OutDone, InDone, R2, E, R>(channel: Effect.Effect<Channel<OutElem, InElem, OutErr, InErr, OutDone, InDone, R2>, E, R>) => Channel<OutElem, InElem, E | OutErr, InErr, OutDone, InDone, R | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2127)

Since v2.0.0