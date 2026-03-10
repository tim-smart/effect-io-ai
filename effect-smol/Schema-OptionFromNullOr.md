Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromNullOr

Decodes a nullable, required value `T` to a required `Option<T>` value.

Decoding:
- `null` is decoded as `None`
- other values are decoded as `Some`

Encoding:
- `None` is encoded as `null`
- `Some` is encoded as the value

**Signature**

```ts
declare const OptionFromNullOr: <S extends Top>(schema: S) => OptionFromNullOr<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5435)

Since v4.0.0