Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromOptionalKey

Decodes an optional value `A` to a required `Option<A>` value.

Decoding:
- a missing key is decoded as `None`
- a present value is decoded as `Some`

Encoding:
- `None` is encoded as missing key
- `Some` is encoded as the value

**Signature**

```ts
declare const OptionFromOptionalKey: <S extends Top>(schema: S) => OptionFromOptionalKey<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5518)

Since v4.0.0