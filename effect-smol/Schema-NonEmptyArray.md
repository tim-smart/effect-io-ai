Package: `effect`<br />
Module: `Schema`<br />

## Schema.NonEmptyArray

Type-level representation returned by `NonEmptyArray`.

**Signature**

```ts
export interface NonEmptyArray<S extends Top> extends
  Bottom<
    readonly [S["Type"], ...Array<S["Type"]>],
    readonly [S["Encoded"], ...Array<S["Encoded"]>],
    S["DecodingServices"],
    S["EncodingServices"],
    SchemaAST.Arrays,
    NonEmptyArray<S>,
    readonly [S["~type.make"], ...Array<S["~type.make"]>],
    readonly [S["Iso"], ...Array<S["Iso"]>]
  >
{
  readonly value: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4161)

Since v3.10.0