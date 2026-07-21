Package: `effect`<br />
Module: `Schema`<br />

## Schema.flip

Type-level representation returned by `flip`.

**Signature**

```ts
export interface flip<S extends Top> extends
  BottomLazy<
    SchemaAST.AST,
    flip<S>,
    ReadonlyArray<Constraint>,
    S["~encoded.mutability"],
    S["~encoded.optionality"],
    ConstructorDefault,
    S["~type.mutability"],
    S["~type.optionality"]
  >
{
  readonly "Type": S["Encoded"]
  readonly "Encoded": S["Type"]
  readonly "DecodingServices": S["EncodingServices"]
  readonly "EncodingServices": S["DecodingServices"]
  readonly "~type.make.in": S["Encoded"]
  readonly "~type.make": S["Encoded"]
  readonly "Iso": S["Encoded"]
  readonly [FlipTypeId]: typeof FlipTypeId
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2567)

Since v4.0.0