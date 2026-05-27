Package: `effect`<br />
Module: `Sink`<br />

## Sink.fromEffect

Creates a sink that ignores upstream input and completes with the success
value of the provided effect.

**Details**

If the effect fails, the sink fails with the same error.

**Signature**

```ts
declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Sink<A, unknown, never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L472)

Since v2.0.0