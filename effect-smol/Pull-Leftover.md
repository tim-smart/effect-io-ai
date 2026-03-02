Package: `effect`<br />
Module: `Pull`<br />

## Pull.Leftover

Extracts the leftover type from a Pull type.

**Signature**

```ts
type Leftover<P> = P extends Effect<infer _A, infer _E, infer _R> ? _E extends Cause.Done<infer _L> ? _L : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L43)

Since v4.0.0