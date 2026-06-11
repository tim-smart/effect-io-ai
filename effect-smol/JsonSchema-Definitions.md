Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.Definitions

A record of named JSON Schema definitions, keyed by definition name.

**When to use**

Use as the shared lookup table for named JSON Schema nodes that are
referenced from JSON Schema documents.

**Details**

The map is dialect-neutral. Conversion APIs emit it as `$defs`,
`definitions`, or `components.schemas` depending on the target format.

**See**

- `Document` for a single root schema with definitions
- `MultiDocument` for multiple root schemas sharing definitions
- `resolve$ref` for resolving a `$ref` against definitions

**Signature**

```ts
export interface Definitions extends Record<string, JsonSchema> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L89)

Since v4.0.0