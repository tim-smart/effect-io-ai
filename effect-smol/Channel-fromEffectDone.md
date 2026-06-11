Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromEffectDone

Creates a channel that evaluates an effect and uses its successful value as
the channel's done value without emitting any output elements.

**Details**

If the effect fails, the channel fails with the effect's error.

**Signature**

```ts
declare const fromEffectDone: <A, E, R>(effect: Effect.Effect<A, E, R>) => Channel<never, Pull.ExcludeDone<E>, A, unknown, unknown, unknown, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L1139)

Since v4.0.0