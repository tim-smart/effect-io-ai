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
export interface Declaration<T, TypeParameters extends ReadonlyArray<Top> = readonly []>
    extends Bottom<T, TypeParameters>
  {
    readonly toCodec?:
      | ((typeParameters: TypeParameters.Encoded<TypeParameters>) => AST.Link)
      | undefined
    readonly toCodecJson?:
      | ((typeParameters: TypeParameters.Encoded<TypeParameters>) => AST.Link)
      | undefined
    readonly toCodecIso?:
      | ((typeParameters: TypeParameters.Type<TypeParameters>) => AST.Link)
      | undefined
    readonly toArbitrary?: ToArbitrary.Declaration<T, TypeParameters> | undefined
    readonly toEquivalence?: ToEquivalence.Declaration<T, TypeParameters> | undefined
    readonly toFormatter?: ToFormatter.Declaration<T, TypeParameters> | undefined
    readonly typeConstructor?: {
      readonly _tag: string
    } | undefined
    readonly generation?: {
      readonly runtime: string
      readonly Type: string
      readonly Encoded?: string | undefined
      readonly importDeclaration?: string | undefined
    } | undefined
    /**
     * Used to collect sentinels from a Declaration AST.
     *
     * @internal
     */
    readonly "~sentinels"?: ReadonlyArray<AST.Sentinel> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L12013)

Since v4.0.0