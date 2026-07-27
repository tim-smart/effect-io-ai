Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.Declaration

Full annotation set for `Declaration` schema nodes — used when defining
custom, opaque schema types via `Schema.declare`. Extends `Bottom`
with optional codec, arbitrary, equivalence, and formatter hooks so that
derived capabilities (JSON encoding, property testing, etc.) can be
provided for the custom type.

**Signature**

```ts
export interface Declaration<T, TypeParameters extends ReadonlyArray<Constraint> = readonly []>
    extends Bottom<T, TypeParameters>
  {
    readonly representation?:
      | SchemaRepresentation.RepresentationAnnotation
      | undefined
    readonly toCodec?:
      | ((typeParameters: TypeParameters.Encoded<TypeParameters>) => SchemaAST.Link)
      | undefined
    readonly toCodecJson?:
      | ((typeParameters: TypeParameters.Encoded<TypeParameters>) => SchemaAST.Link | undefined)
      | undefined
    readonly toCodecStringTree?:
      | ((typeParameters: TypeParameters.Encoded<TypeParameters>) => SchemaAST.Link | undefined)
      | undefined
    readonly toCodecIso?:
      | ((typeParameters: TypeParameters.Type<TypeParameters>) => SchemaAST.Link)
      | undefined
    readonly toArbitrary?: ToArbitrary.Declaration<T, TypeParameters> | undefined
    readonly toEquivalence?: ToEquivalence.Declaration<T, TypeParameters> | undefined
    readonly toFormatter?: ToFormatter.Declaration<T, TypeParameters> | undefined
    readonly toCode?: SchemaRepresentation.Generation.Declaration | undefined
    /**
     * Used to collect sentinels from a Declaration SchemaAST.
     *
     * **Details**
     *
     * Reserved to internal use only.
     */
    readonly "~sentinels"?: ReadonlyArray<SchemaAST.Sentinel> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L16275)

Since v4.0.0