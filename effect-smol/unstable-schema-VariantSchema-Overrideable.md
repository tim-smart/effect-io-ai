Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Overrideable

Schema type whose constructor can use an effectful default unless a value is
explicitly branded with `Override`.

**Signature**

```ts
export interface Overrideable<S extends Schema.Top & Schema.WithoutConstructorDefault> extends
  Schema.Bottom<
    S["Type"] & Brand<"Override">,
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    S["ast"],
    Overrideable<S>,
    S["~type.make.in"],
    (S["Type"] & Brand<"Override">) | undefined,
    S["~type.parameters"],
    (S["Type"] & Brand<"Override">) | undefined,
    S["~type.mutability"],
    "required",
    "with-default",
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L545)

Since v4.0.0