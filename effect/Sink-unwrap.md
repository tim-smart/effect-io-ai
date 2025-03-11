## unwrap

Creates a sink produced from an effect.

**Signature**

```ts
declare const unwrap: <A, In, L, E2, R2, E, R>(effect: Effect.Effect<Sink<A, In, L, E2, R2>, E, R>) => Sink<A, In, L, E2 | E, R2 | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1350)

Since v2.0.0