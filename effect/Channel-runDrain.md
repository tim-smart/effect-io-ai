Package: `effect`<br />
Module: `Channel`<br />

## Channel.runDrain

Runs a channel until the end is received.

**Signature**

```ts
declare const runDrain: <OutElem, OutErr, InErr, OutDone, InDone, Env>(self: Channel<OutElem, unknown, OutErr, InErr, OutDone, InDone, Env>) => Effect.Effect<OutDone, OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1952)

Since v2.0.0