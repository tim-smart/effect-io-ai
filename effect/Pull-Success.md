Package: `effect`<br />
Module: `Pull`<br />

## Pull.Success

Extracts the success type from a Pull type.

**When to use**

Use to derive the value produced by an existing `Pull` when declaring
reusable type aliases, low-level stream helpers, or function signatures.

**See**

- `Error` for extracting the ordinary failure type
- `Leftover` for extracting the completion leftover type
- `Services` for extracting the required services type instead

**Signature**

```ts
type Success<P> = P extends Effect<infer _A, infer _E, infer _R> ? _A : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pull.ts#L59)

Since v4.0.0