Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromOptional

Decodes an optional or `undefined` value `A` to an required `Option<A>`
value.

Decoding:
- a missing key is decoded as `None`
- a present key with an `undefined` value is decoded as `None`
- all other values are decoded as `Some`

Encoding:
- `None` is encoded as missing key
- `Some` is encoded as the value

**Signature**

```ts
declare const OptionFromOptional: <S extends Top>(schema: S) => OptionFromOptional<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5546)

Since v4.0.0