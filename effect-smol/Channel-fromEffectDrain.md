Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromEffectDrain

Uses an effect and discards its result.

**Signature**

```ts
declare const fromEffectDrain: <A, E, R>(effect: Effect.Effect<A, E, R>) => Channel<never, E, void, unknown, unknown, unknown, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1150)

Since v4.0.0