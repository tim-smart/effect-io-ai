Package: `effect`<br />
Module: `Schema`<br />

## Schema.withConstructorDefault

The type produced by `withConstructorDefault` — a schema with `"~type.constructor.default": "with-default"`.

**See**

- `withConstructorDefault` for the constructor

**Signature**

```ts
export interface withConstructorDefault<S extends Top & WithoutConstructorDefault> extends
  Bottom<
    S["Type"],
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    S["ast"],
    withConstructorDefault<S>,
    S["~type.make.in"],
    S["Iso"],
    S["~type.parameters"],
    S["~type.make"],
    S["~type.mutability"],
    S["~type.optionality"],
    "with-default",
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4254)

Since v4.0.0