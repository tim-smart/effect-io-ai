Package: `effect`<br />
Module: `Schema`<br />

## Schema.StructWithRest

Type-level representation returned by `StructWithRest`.

**Signature**

```ts
export interface StructWithRest<
  S extends StructWithRest.Objects,
  Records extends StructWithRest.Records
> extends
  BottomLazy<
    SchemaAST.Objects,
    StructWithRest<S, Records>
  >
{
  readonly "Type": Simplify<StructWithRest.Type<S, Records>>
  readonly "Encoded": Simplify<StructWithRest.Encoded<S, Records>>
  readonly "DecodingServices": StructWithRest.DecodingServices<S, Records>
  readonly "EncodingServices": StructWithRest.EncodingServices<S, Records>
  readonly "~type.make.in": Simplify<StructWithRest.MakeIn<S, Records>>
  readonly "~type.make": Simplify<StructWithRest.MakeIn<S, Records>>
  readonly "Iso": Simplify<StructWithRest.Iso<S, Records>>
  readonly schema: S
  readonly records: Records
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3956)

Since v4.0.0