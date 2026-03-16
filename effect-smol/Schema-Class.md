Package: `effect`<br />
Module: `Schema`<br />

## Schema.Class

Interface for schema-backed classes created with `Class`.

A `Class` is a TypeScript class whose constructor validates its input
against a `Struct` schema. Instances are always structurally valid.

The interface exposes the schema's `fields`, an `identifier` string, and
helpers such as `mapFields`, `annotate`, `check`, and `extend`.

**Signature**

```ts
export interface Class<Self, S extends Top & { readonly fields: Struct.Fields }, Inherited> extends
  Bottom<
    Self,
    S["Encoded"],
    S["DecodingServices"],
    S["EncodingServices"],
    AST.Declaration,
    decodeTo<declareConstructor<Self, S["Encoded"], readonly [S], S["Iso"]>, S>,
    S["~type.make.in"],
    S["Iso"],
    readonly [S],
    Self,
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  // intentionally left without `readonly "~rebuild.out": this`
  new(
    ...args: {} extends S["~type.make.in"] ? [props?: S["~type.make.in"], options?: MakeOptions]
      : [props: S["~type.make.in"], options?: MakeOptions]
  ): S["Type"] & Inherited
  readonly identifier: string
  readonly fields: S["fields"]
  /**
   * Returns a new struct with the fields modified by the provided function.
   *
   * **Options**
   *
   * - `unsafePreserveChecks` - if `true`, keep any `.check(...)` constraints
   *   that were attached to the original struct. Defaults to `false`.
   *
   *   **Warning**: This is an unsafe operation. Since `mapFields`
   *   transformations change the schema type, the original refinement functions
   *   may no longer be valid or safe to apply to the transformed schema. Only
   *   use this option if you have verified that your refinements remain correct
   *   after the transformation.
   */
  mapFields<To extends Struct.Fields>(
    f: (fields: S["fields"]) => To,
    options?: {
      readonly unsafePreserveChecks?: boolean | undefined
    } | undefined
  ): Struct<Simplify<Readonly<To>>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9717)

Since v4.0.0