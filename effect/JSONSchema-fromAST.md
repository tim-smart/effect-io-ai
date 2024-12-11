# fromAST

Returns a JSON Schema with additional options and definitions.

**Warning**

This function is experimental and subject to change.

**Details**

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

To import and use `fromAST` from the "JSONSchema" module:

```ts
import * as JSONSchema from "effect/JSONSchema"
// Can be accessed like this
JSONSchema.fromAST
```

**Signature**

```ts
export declare const fromAST: (
  ast: AST.AST,
  options: {
    readonly definitions: Record<string, JsonSchema7>
    readonly definitionPath?: string
    readonly target?: Target
    readonly topLevelReferenceStrategy?: TopLevelReferenceStrategy
  }
) => JsonSchema7
```
