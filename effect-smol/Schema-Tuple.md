Package: `effect`<br />
Module: `Schema`<br />

## Schema.Tuple

Schema type for a fixed-length tuple. Produced by `Tuple`.

**Signature**

```ts
export interface Tuple<Elements extends Tuple.Elements> extends
  Bottom<
    Tuple.Type<Elements>,
    Tuple.Encoded<Elements>,
    Tuple.DecodingServices<Elements>,
    Tuple.EncodingServices<Elements>,
    AST.Arrays,
    Tuple<Elements>,
    Tuple.MakeIn<Elements>,
    Tuple.Iso<Elements>
  >
{
  readonly "~rebuild.out": this
  readonly elements: Elements
  /**
   * Returns a new tuple with the elements modified by the provided function.
   *
   * **Options**
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2988)

Since v4.0.0