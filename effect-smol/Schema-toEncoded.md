Package: `effect`<br />
Module: `Schema`<br />

## Schema.toEncoded

Type-level representation returned by `toEncoded`.

**Signature**

```ts
export interface toEncoded<S extends Constraint> extends
  BottomLazy<
    SchemaAST.AST,
    toEncoded<S>,
    ReadonlyArray<Constraint>,
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": S["Encoded"]
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": never
  readonly "EncodingServices": never
  readonly "~type.make.in": S["Encoded"]
  readonly "~type.make": S["Encoded"]
  readonly "Iso": S["Encoded"]
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2466)

Since v4.0.0