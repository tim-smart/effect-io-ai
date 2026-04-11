Package: `effect`<br />
Module: `Schema`<br />

## Schema.ToJsonSchemaOptions

Options for `toJsonSchemaDocument`.

**Signature**

```ts
export interface ToJsonSchemaOptions {
  /**
   * Controls how additional properties are handled while resolving the JSON
   * schema.
   *
   * Possible values include:
   * - `false`: Disallow additional properties (default)
   * - `true`: Allow additional properties
   * - `JsonSchema`: Use the provided JSON Schema for additional properties
   */
  readonly additionalProperties?: boolean | JsonSchema.JsonSchema | undefined
  /**
   * Controls whether to generate descriptions for checks (if the user has not
   * provided them) based on the `expected` annotation of the check.
   */
  readonly generateDescriptions?: boolean | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11039)

Since v4.0.0