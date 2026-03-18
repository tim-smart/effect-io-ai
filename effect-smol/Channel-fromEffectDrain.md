Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromEffectDrain

Use an effect and discard its result.

**Signature**

```ts
declare const fromEffectDrain: <A, E, R>(effect: Effect.Effect<A, E, R>) => Channel<never, E, void, unknown, unknown, unknown, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1079)

Since v4.0.0