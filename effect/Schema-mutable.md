Package: `effect`<br />
Module: `Schema`<br />

## Schema.mutable

Type-level representation returned by `mutable`.

**Signature**

```ts
export interface mutable<S extends Constraint & { readonly "ast": SchemaAST.Arrays }> extends
  BottomLazy<
    S["ast"],
    mutable<S>,
    S["~type.parameters"],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": Mutable<S["Type"]>
  readonly "Encoded": Mutable<S["Encoded"]>
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  // "~type.make" and "~type.make.in" as they are because they are contravariant
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["~type.make"]
  readonly "Iso": S["Iso"]
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L4663)

Since v3.10.0