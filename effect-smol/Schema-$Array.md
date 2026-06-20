Package: `effect`<br />
Module: `Schema`<br />

## Schema.$Array

Type-level representation returned by `Array`.

**Signature**

```ts
export interface $Array<S extends Top> extends
  Bottom<
    ReadonlyArray<S["Type"]>,
    ReadonlyArray<S["Encoded"]>,
    S["DecodingServices"],
    S["EncodingServices"],
    SchemaAST.Arrays,
    $Array<S>,
    ReadonlyArray<S["~type.make"]>,
    ReadonlyArray<S["Iso"]>
  >
{
  readonly value: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4247)

Since v4.0.0