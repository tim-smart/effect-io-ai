## run

Runs a channel until the end is received.

**Signature**

```ts
declare const run: <OutErr, InErr, OutDone, InDone, Env>(self: Channel<never, unknown, OutErr, InErr, OutDone, InDone, Env>) => Effect.Effect<OutDone, OutErr, Env>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1929)

Since v2.0.0