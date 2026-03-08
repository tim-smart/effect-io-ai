Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.Newtype.Key

Extracts the key literal type from a newtype.

- Useful in generic code that needs to inspect or constrain the key.

**Signature**

```ts
type Key<N> = N extends Newtype<infer Key, unknown> ? Key : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L130)

Since v4.0.0