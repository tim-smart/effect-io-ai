Package: `effect`<br />
Module: `Pull`<br />

## Pull.Services

Extracts the service requirements (context) type from a Pull type.

**Signature**

```ts
type Services<P> = P extends Effect<infer _A, infer _E, infer _R> ? _R : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L52)

Since v4.0.0