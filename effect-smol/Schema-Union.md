Package: `effect`<br />
Module: `Schema`<br />

## Schema.Union

Companion type for a union of multiple schemas. Produced by `Union`.

**Signature**

```ts
export interface Union<Members extends ReadonlyArray<Top>> extends
  Bottom<
    { [K in keyof Members]: Members[K]["Type"] }[number],
    { [K in keyof Members]: Members[K]["Encoded"] }[number],
    { [K in keyof Members]: Members[K]["DecodingServices"] }[number],
    { [K in keyof Members]: Members[K]["EncodingServices"] }[number],
    AST.Union<{ [K in keyof Members]: Members[K]["ast"] }[number]>,
    Union<Members>,
    { [K in keyof Members]: Members[K]["~type.make"] }[number],
    { [K in keyof Members]: Members[K]["Iso"] }[number]
  >
{
  readonly members: Members
  /**
   * Returns a new union with the members modified by the provided function.
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
  mapMembers<To extends ReadonlyArray<Top>>(
    f: (members: Members) => To,
    options?: {
      readonly unsafePreserveChecks?: boolean | undefined
    } | undefined
  ): Union<Simplify<Readonly<To>>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3384)

Since v4.0.0