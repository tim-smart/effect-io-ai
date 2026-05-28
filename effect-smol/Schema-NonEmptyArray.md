Package: `effect`<br />
Module: `Schema`<br />

## Schema.NonEmptyArray

Companion type for a non-empty `ReadonlyArray`. Produced by `NonEmptyArray`.

**Details**

The decoded type is `readonly [S["Type"], ...Array<S["Type"]>]`, the encoded type is
`readonly [S["Encoded"], ...Array<S["Encoded"]>]`, and the element schema is available as
`value`.

**Signature**

```ts
export interface NonEmptyArray<S extends Top> extends
  Bottom<
    readonly [S["Type"], ...Array<S["Type"]>],
    readonly [S["Encoded"], ...Array<S["Encoded"]>],
    S["DecodingServices"],
    S["EncodingServices"],
    AST.Arrays,
    NonEmptyArray<S>,
    readonly [S["~type.make"], ...Array<S["~type.make"]>],
    readonly [S["Iso"], ...Array<S["Iso"]>]
  >
{
  readonly value: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4040)

Since v3.10.0