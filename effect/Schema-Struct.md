Package: `effect`<br />
Module: `Schema`<br />

## Schema.Struct

Type-level representation returned by `Struct`.

**Signature**

```ts
export interface Struct<Fields extends Struct.Fields> extends BottomLazy<SchemaAST.Objects, Struct<Fields>> {
  readonly "Type": Struct.Type<Fields>
  readonly "Encoded": Struct.Encoded<Fields>
  readonly "DecodingServices": Struct.DecodingServices<Fields>
  readonly "EncodingServices": Struct.EncodingServices<Fields>
  readonly "~type.make.in": Struct.MakeIn<Fields>
  readonly "~type.make": Struct.MakeIn<Fields>
  readonly "Iso": Struct.Iso<Fields>
  /**
   * The field definitions of this struct. Spread them into a new struct to
   * reuse fields across schemas.
   *
   * **Example** (Reusing fields across structs)
   *
   * ```ts
   * import { Schema } from "effect"
   *
   * const Timestamped = Schema.Struct({
   *   createdAt: Schema.Date,
   *   updatedAt: Schema.Date
   * })
   *
   * const User = Schema.Struct({
   *   ...Timestamped.fields,
   *   name: Schema.String,
   *   email: Schema.String
   * })
   * ```
   */
  readonly fields: Fields
  /**
   * Returns a new struct with the fields modified by the provided function.
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
  mapFields<To extends Struct.Fields>(
    f: (fields: Fields) => To,
    options?: {
      readonly unsafePreserveChecks?: boolean | undefined
    } | undefined
  ): Struct<Simplify<Readonly<To>>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L3350)

Since v3.10.0