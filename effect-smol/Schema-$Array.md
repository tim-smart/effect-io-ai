Package: `effect`<br />
Module: `Schema`<br />

## Schema.$Array

Schema interface produced by `Schema.Array` for readonly arrays.

**When to use**

Use as the public companion type returned by `Schema.Array` when you need to
refer to a readonly array schema built from an element schema.

**Details**

The decoded type is `ReadonlyArray<S["Type"]>`, the encoded type is
`ReadonlyArray<S["Encoded"]>`, and the element schema is available as
`value`.

**Signature**

```ts
export interface $Array<S extends Top> extends
  Bottom<
    ReadonlyArray<S["Type"]>,
    ReadonlyArray<S["Encoded"]>,
    S["DecodingServices"],
    S["EncodingServices"],
    AST.Arrays,
    $Array<S>,
    ReadonlyArray<S["~type.make"]>,
    ReadonlyArray<S["Iso"]>
  >
{
  readonly value: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3978)

Since v4.0.0