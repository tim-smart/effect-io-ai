Package: `effect`<br />
Module: `Sink`<br />

## Sink.fromEffect

Creates a single-value sink produced from an effect.

**Signature**

```ts
declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Sink<A, unknown, never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L992)

Since v2.0.0