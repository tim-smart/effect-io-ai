Package: `effect`<br />
Module: `Schema`<br />

## Schema.Union

Type-level representation returned by `Union`.

**Signature**

```ts
export interface Union<Members extends ReadonlyArray<Constraint>> extends
  BottomLazy<
    SchemaAST.Union<{ [K in keyof Members]: Members[K]["ast"] }[number]>,
    Union<Members>
  >
{
  readonly "Type": { [K in keyof Members]: Members[K]["Type"] }[number]
  readonly "Encoded": { [K in keyof Members]: Members[K]["Encoded"] }[number]
  readonly "DecodingServices": { [K in keyof Members]: Members[K]["DecodingServices"] }[number]
  readonly "EncodingServices": { [K in keyof Members]: Members[K]["EncodingServices"] }[number]
  readonly "~type.make.in": { [K in keyof Members]: Members[K]["~type.make"] }[number]
  readonly "~type.make": { [K in keyof Members]: Members[K]["~type.make"] }[number]
  readonly "Iso": { [K in keyof Members]: Members[K]["Iso"] }[number]
  readonly members: Members
  /**
   * Returns a new union with the members modified by the provided function.
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
  mapMembers<To extends ReadonlyArray<Constraint>>(
    f: (members: Members) => To,
    options?: {
      readonly unsafePreserveChecks?: boolean | undefined
    } | undefined
  ): Union<Simplify<Readonly<To>>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4671)

Since v3.10.0