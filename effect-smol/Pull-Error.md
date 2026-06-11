Package: `effect`<br />
Module: `Pull`<br />

## Pull.Error

Extracts the error type from a Pull type, excluding Done errors.

**When to use**

Use to derive only the ordinary failure type from a `Pull` when declaring
wrappers or APIs that handle completion separately.

**See**

- `Success` for extracting the pulled value type instead
- `Leftover` for extracting the completion leftover type
- `Services` for extracting the required services type instead
- `ExcludeDone` for excluding `Cause.Done` from an error union

**Signature**

```ts
type Error<P> = P extends Effect<infer _A, infer _E, infer _R> ? _E extends Cause.Done<infer _L> ? never : _E
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L77)

Since v4.0.0