Package: `effect`<br />
Module: `Pull`<br />

## Pull.Success

Extracts the success type from a Pull type.

**Signature**

```ts
type Success<P> = P extends Effect<infer _A, infer _E, infer _R> ? _A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L26)

Since v4.0.0