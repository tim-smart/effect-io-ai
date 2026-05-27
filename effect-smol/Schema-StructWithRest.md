Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest

Companion type for a struct combined with one or more record schemas. Produced
by `StructWithRest`.

**When to use**

Use as the schema type returned by `StructWithRest` when generic code needs to
retain the base struct schema and all rest record schemas.

**See**

- `StructWithRest` for constructing this schema type
- `Record` for constructing record schemas used as rest index signatures

**Signature**

```ts
export interface StructWithRest<
  S extends StructWithRest.Objects,
  Records extends StructWithRest.Records
> extends
  Bottom<
    Simplify<StructWithRest.Type<S, Records>>,
    Simplify<StructWithRest.Encoded<S, Records>>,
    StructWithRest.DecodingServices<S, Records>,
    StructWithRest.EncodingServices<S, Records>,
    AST.Objects,
    StructWithRest<S, Records>,
    Simplify<StructWithRest.MakeIn<S, Records>>,
    Simplify<StructWithRest.Iso<S, Records>>
  >
{
  readonly schema: S
  readonly records: Records
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3296)

Since v4.0.0