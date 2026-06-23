Package: `effect`<br />
Module: `Schema`<br />

## Schema.Tuple

Type-level representation returned by `Tuple`.

**Signature**

```ts
export interface Tuple<Elements extends Tuple.Elements> extends
  BottomLazy<
    SchemaAST.Arrays,
    Tuple<Elements>
  >
{
  readonly "Type": Tuple.Type<Elements>
  readonly "Encoded": Tuple.Encoded<Elements>
  readonly "DecodingServices": Tuple.DecodingServices<Elements>
  readonly "EncodingServices": Tuple.EncodingServices<Elements>
  readonly "~type.make.in": Tuple.MakeIn<Elements>
  readonly "~type.make": Tuple.MakeIn<Elements>
  readonly "Iso": Tuple.Iso<Elements>
  readonly elements: Elements
  /**
   * Returns a new tuple with the elements modified by the provided function.
   *
   * **Details**
   *
   * Options:
   *
   * - `unsafePreserveChecks` - if `true`, keep any `.check(...)` constraints
   *   that were attached to the original union. Defaults to `false`.
   *
   *   **Warning**: This is an unsafe operation. Since `mapFields`
   *   transformations change the schema type, the original refinement functions
   *   may no longer be valid or safe to apply to the transformed schema. Only
   *   use this option if you have verified that your refinements remain correct
   *   after the transformation.
   */
  mapElements<To extends Tuple.Elements>(
    f: (elements: Elements) => To,
    options?: {
      readonly unsafePreserveChecks?: boolean | undefined
    } | undefined
  ): Tuple<Simplify<Readonly<To>>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4149)

Since v3.10.0