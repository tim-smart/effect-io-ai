Package: `effect`<br />
Module: `Schema`<br />

## Schema.toCodecStringTree

Type-level representation returned by `toCodecStringTree`.

**Signature**

```ts
export interface toCodecStringTree<S extends Constraint> extends
  BottomLazy<
    S["ast"],
    toCodecStringTree<S>,
    ReadonlyArray<Constraint>,
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": S["Type"]
  readonly "Encoded": StringTree
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": S["~type.make.in"]
  readonly "~type.make": S["~type.make"]
  readonly "Iso": S["Iso"]
  readonly schema: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L13485)

Since v4.0.0