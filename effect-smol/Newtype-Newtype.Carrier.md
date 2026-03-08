Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.Newtype.Carrier

Extracts the carrier (underlying) type from a newtype.

- Useful when you need to refer to the wrapped type in generic utilities.

**Signature**

```ts
type Carrier<N> = N extends Newtype<infer _Key, infer Carrier> ? Carrier : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L139)

Since v4.0.0