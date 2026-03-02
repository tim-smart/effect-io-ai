Package: `effect`<br />
Module: `Pull`<br />

## Pull.Error

Extracts the error type from a Pull type, excluding Done errors.

**Signature**

```ts
type Error<P> = P extends Effect<infer _A, infer _E, infer _R> ? _E extends Cause.Done<infer _L> ? never : _E
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L34)

Since v4.0.0