Package: `effect`<br />
Module: `Effect`<br />

## Effect.Services

Extracts the required services type from an `Effect`.

**Signature**

```ts
type Services<T> = T extends Effect<infer _A, infer _E, infer _R> ? _R
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L236)

Since v2.0.0