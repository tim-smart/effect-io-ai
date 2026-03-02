Package: `effect`<br />
Module: `JsonSchema`<br />

## JsonSchema.MultiDocument

Like `Document`, but carries multiple root schemas that share a
single definitions pool. The `schemas` tuple is non-empty (at least one
element).

- Use when generating several schemas (e.g. request body + response body)
  that reference the same set of definitions.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/JsonSchema.ts#L187)

Since v4.0.0