Package: `effect`<br />
Module: `Effect`<br />

## Effect.Error

Extracts the error type from an `Effect`.

**Signature**

```ts
type Error<T> = T extends Effect<infer _A, infer _E, infer _R> ? _E
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L227)

Since v2.0.0