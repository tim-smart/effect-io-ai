Package: `effect`<br />
Module: `Effect`<br />

## Effect.Success

Extracts the success type from an `Effect`.

**Signature**

```ts
type Success<T> = T extends Effect<infer _A, infer _E, infer _R> ? _A
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L220)

Since v2.0.0