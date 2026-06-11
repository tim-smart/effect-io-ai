Package: `effect`<br />
Module: `Pull`<br />

## Pull.Services

Extracts the service requirements (context) type from a Pull type.

**When to use**

Use to derive the context requirements of a generic or inferred `Pull`
without restating its `R` type parameter.

**See**

- `Success` for extracting the pulled value type instead
- `Error` for extracting the ordinary failure type
- `Leftover` for extracting the completion leftover type

**Signature**

```ts
type Services<P> = P extends Effect<infer _A, infer _E, infer _R> ? _R : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L114)

Since v4.0.0