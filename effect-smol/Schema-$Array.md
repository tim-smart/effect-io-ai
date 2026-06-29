Package: `effect`<br />
Module: `Schema`<br />

## Schema.$Array

Type-level representation returned by `Array`.

**Signature**

```ts
export interface $Array<S extends Constraint> extends
  BottomLazy<
    SchemaAST.Arrays,
    $Array<S>
  >
{
  readonly "Type": ReadonlyArray<S["Type"]>
  readonly "Encoded": ReadonlyArray<S["Encoded"]>
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": ReadonlyArray<S["~type.make"]>
  readonly "~type.make": ReadonlyArray<S["~type.make"]>
  readonly "Iso": ReadonlyArray<S["Iso"]>
  readonly value: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4437)

Since v4.0.0