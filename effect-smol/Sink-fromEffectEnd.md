Package: `effect`<br />
Module: `Sink`<br />

## Sink.fromEffectEnd

Creates a sink that ignores upstream input and completes from an effect that
already returns an `End`.

**When to use**

Use when you need to create a sink from an effect that returns both the sink
result value and optional leftovers.

**Signature**

```ts
declare const fromEffectEnd: <A, E, R, L = never>(effect: Effect.Effect<End<A, L>, E, R>) => Sink<A, unknown, L, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L457)

Since v4.0.0