Package: `effect`<br />
Module: `Effect`<br />

## Effect.Error

Extracts the error type from an `Effect`.

**When to use**

Use to derive the error type from an existing `Effect` type when declaring
helper types, wrappers, or APIs that preserve the effect's failure channel.

**Details**

Non-`Effect` inputs resolve to `never`.

**See**

- `Success` for extracting the success value type instead
- `Services` for extracting the required services type instead

**Signature**

```ts
type Error<T> = T extends Effect<infer _A, infer _E, infer _R> ? _E
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L194)

Since v2.0.0