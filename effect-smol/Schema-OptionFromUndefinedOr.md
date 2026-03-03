Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromUndefinedOr

Decodes an undefined-or value `T` to a required `Option<T>` value.

Decoding:
- `undefined` is decoded as `None`
- other values are decoded as `Some`

Encoding:
- `None` is encoded as `undefined`
- `Some` is encoded as the value

**Signature**

```ts
declare const OptionFromUndefinedOr: <S extends Top>(schema: S) => OptionFromUndefinedOr<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5454)

Since v4.0.0