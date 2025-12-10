Package: `effect`<br />
Module: `JSONSchema`<br />

## JSONSchema.fromAST

Returns a JSON Schema with additional options and definitions.

**Warning**

This function is experimental and subject to change.

**Options**

- `definitions`: A record of definitions that are included in the schema.
- `definitionPath`: The path to the definitions within the schema (defaults
  to "#/$defs/").
- `target`: Which spec to target. Possible values are:
  - `'jsonSchema7'`: JSON Schema draft-07 (default behavior).
  - `'jsonSchema2019-09'`: JSON Schema draft-2019-09.
  - `'openApi3.1'`: OpenAPI 3.1.
- `topLevelReferenceStrategy`: Controls the handling of the top-level
  reference. Possible values are:
  - `"keep"`: Keep the top-level reference (default behavior).
  - `"skip"`: Skip the top-level reference.
- `additionalPropertiesStrategy`: Controls the handling of additional properties. Possible values are:
  - `"strict"`: Disallow additional properties (default behavior).
  - `"allow"`: Allow additional properties.

**Signature**

```ts
declare const fromAST: (ast: AST.AST, options: { readonly definitions: Record<string, JsonSchema7>; readonly definitionPath?: string | undefined; readonly target?: Target | undefined; readonly topLevelReferenceStrategy?: TopLevelReferenceStrategy | undefined; readonly additionalPropertiesStrategy?: AdditionalPropertiesStrategy | undefined; }) => JsonSchema7
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/JSONSchema.ts#L337)

Since v3.11.5