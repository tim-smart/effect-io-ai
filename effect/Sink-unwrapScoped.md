## unwrapScoped

Creates a sink produced from a scoped effect.

**Signature**

```ts
declare const unwrapScoped: <A, In, L, E, R>(effect: Effect.Effect<Sink<A, In, L, E, R>, E, R>) => Sink<A, In, L, E, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1360)

Since v2.0.0