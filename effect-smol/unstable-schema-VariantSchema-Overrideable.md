Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Overrideable

Schema type whose constructor can use an effectful default unless a value is
explicitly branded with `Override`.

**Signature**

```ts
export interface Overrideable<S extends Schema.Top & Schema.WithoutConstructorDefault> extends
  Schema.BottomLazy<
    S["ast"],
    Overrideable<S>,
    S["~type.parameters"],
    S["~type.mutability"],
    "required",
    "with-default",
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": S["Type"] & Brand<"Override">
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": (S["Type"] & Brand<"Override">) | undefined
  readonly "Iso": (S["Type"] & Brand<"Override">) | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/VariantSchema.ts#L531)

Since v4.0.0