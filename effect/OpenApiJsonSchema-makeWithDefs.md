Package: `@effect/platform`<br />
Module: `OpenApiJsonSchema`<br />

## OpenApiJsonSchema.makeWithDefs

Creates a schema with additional options and definitions.

**Options**

- `defs`: A record of definitions that are included in the schema.
- `defsPath`: The path to the definitions within the schema (defaults to "#/$defs/").
- `topLevelReferenceStrategy`: Controls the handling of the top-level reference. Possible values are:
  - `"keep"`: Keep the top-level reference (default behavior).
  - `"skip"`: Skip the top-level reference.
- `additionalPropertiesStrategy`: Controls the handling of additional properties. Possible values are:
  - `"strict"`: Disallow additional properties (default behavior).
  - `"allow"`: Allow additional properties.

**Signature**

```ts
declare const makeWithDefs: <A, I, R>(schema: Schema.Schema<A, I, R>, options: { readonly defs: Record<string, any>; readonly defsPath?: string | undefined; readonly topLevelReferenceStrategy?: TopLevelReferenceStrategy | undefined; readonly additionalPropertiesStrategy?: AdditionalPropertiesStrategy | undefined; }) => JsonSchema
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/OpenApiJsonSchema.ts#L279)

Since v1.0.0