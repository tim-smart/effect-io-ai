Package: `effect`<br />
Module: `Effect`<br />

## Effect.Services

Extracts the required services type from an `Effect`.

**When to use**

Use to derive the context requirements of a generic or inferred `Effect`
without restating its `R` type parameter.

**See**

- `Success` for extracting the success value type instead
- `Error` for extracting the failure type instead

**Signature**

```ts
type Services<T> = T extends Effect<infer _A, infer _E, infer _R> ? _R
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L211)

Since v4.0.0