Package: `effect`<br />
Module: `Schema`<br />

## Schema.OptionFromNullishOr

Decodes a nullish value `T` to a required `Option<T>` value.

Decoding:
- `null` and `undefined` are decoded as `None`
- other values are decoded as `Some`

Encoding:
- `None` is encoded as `null` or `undefined` depending on the provided `options.onNoneEncoding` (defaults to `undefined`)
- `Some` is encoded as the value

**Signature**

```ts
declare const OptionFromNullishOr: <S extends Top>(schema: S, options?: { onNoneEncoding: null | undefined; }) => OptionFromNullishOr<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5487)

Since v4.0.0