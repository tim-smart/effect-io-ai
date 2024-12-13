# makeWithDefs

Creates a schema with additional options and definitions.

- `defs`: A record of definitions that are included in the schema.
- `defsPath`: The path to the definitions within the schema (defaults to "#/$defs/").
- `topLevelReferenceStrategy`: Controls the handling of the top-level reference. Possible values are:
  - `"keep"`: Keep the top-level reference (default behavior).
  - `"skip"`: Skip the top-level reference.

To import and use `makeWithDefs` from the "OpenApiJsonSchema" module:

```ts
import * as OpenApiJsonSchema from "@effect/platform/OpenApiJsonSchema"
// Can be accessed like this
OpenApiJsonSchema.makeWithDefs
```

**Signature**

```ts
export declare const makeWithDefs: <A, I, R>(
  schema: Schema.Schema<A, I, R>,
  options: {
    readonly defs: Record<string, any>
    readonly defsPath?: string
    readonly topLevelReferenceStrategy?: "skip" | "keep"
  }
) => JsonSchema
```
