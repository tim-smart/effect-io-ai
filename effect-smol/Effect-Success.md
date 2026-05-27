Package: `effect`<br />
Module: `Effect`<br />

## Effect.Success

Extracts the success type from an `Effect`.

**When to use**

Use to derive the value produced by an existing effect when declaring
reusable type aliases, service interfaces, or function signatures.

**See**

- `Error` for extracting the failure type from the same `Effect`
- `Services` for extracting the required services from the same `Effect`

**Signature**

```ts
type Success<T> = T extends Effect<infer _A, infer _E, infer _R> ? _A
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L240)

Since v2.0.0