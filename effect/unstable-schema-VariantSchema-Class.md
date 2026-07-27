Package: `effect`<br />
Module: `VariantSchema`<br />

## VariantSchema.Class

Schema class type returned by variant class constructors, combining the default
variant schema with access to the original variant fields.

**Signature**

```ts
export interface Class<
  Self,
  Fields extends Struct.Fields,
  S extends Schema.Top & {
    readonly fields: Schema.Struct.Fields
  }
> extends Schema.Class<Self, S, {}>, Struct<Struct_.Simplify<Fields>> {
  readonly "Type": Self
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": Self
  readonly "Iso": S["Iso"]

  new(
    props: S["~type.make.in"],
    options?: {
      readonly disableChecks?: boolean
    } | undefined
  ): S["Type"]

  make<Args extends Array<any>, X>(
    this: { new(...args: Args): X },
    ...args: Args
  ): X

  readonly fields: S["fields"]
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/VariantSchema.ts#L260)

Since v4.0.0