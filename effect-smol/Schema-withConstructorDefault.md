Package: `effect`<br />
Module: `Schema`<br />

## Schema.withConstructorDefault

Type-level representation returned by `withConstructorDefault`.

**Signature**

```ts
export interface withConstructorDefault<S extends Constraint & WithoutConstructorDefault> extends
  BottomLazy<
    S["ast"],
    withConstructorDefault<S>,
    S["~type.parameters"],
    S["~type.mutability"],
    S["~type.optionality"],
    "with-default",
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": S["Type"]
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["~type.make"]
  readonly "Iso": S["Iso"]
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5576)

Since v3.10.0