Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.MultiDocument

Like `Document`, but carries multiple root schemas that share a
single definitions pool.

**When to use**

Use when generating several schemas, such as a request body
and a response body, that reference the same set of definitions.

**Details**

The `schemas` tuple is non-empty and contains at least one element.

**See**

- `Document`
- `toMultiDocumentOpenApi3_1`

**Signature**

```ts
export interface MultiDocument<D extends Dialect> {
  readonly dialect: D
  readonly schemas: readonly [JsonSchema, ...Array<JsonSchema>]
  readonly definitions: Definitions
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L155)

Since v4.0.0