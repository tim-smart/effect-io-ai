Package: `effect`<br />
Module: `Channel`<br />

## Channel.runDone

Runs a channel and outputs the done value.

**Signature**

```ts
declare const runDone: <OutElem, OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<OutDone, OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7179)

Since v4.0.0