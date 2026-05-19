Package: `effect`<br />
Module: `Channel`<br />

## Channel.runForEachWhile

Runs a channel and applies an effectful predicate to each output element
until the predicate returns `false`.

Returning `true` continues consuming the channel. Returning `false` stops
consumption early. The returned effect completes with `void`.

**Signature**

```ts
declare const runForEachWhile: { <OutElem, EX, RX>(f: (o: OutElem) => Effect.Effect<boolean, EX, RX>): <OutErr, OutDone, Env>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>) => Effect.Effect<void, OutErr | EX, Env | RX>; <OutElem, OutErr, OutDone, Env, EX, RX>(self: Channel<OutElem, OutErr, OutDone, unknown, unknown, unknown, Env>, f: (o: OutElem) => Effect.Effect<boolean, EX, RX>): Effect.Effect<void, OutErr | EX, Env | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L7505)

Since v4.0.0