Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.String

The `string` type with optional validation checks.

- `checks` holds string-specific constraints (min/max length, pattern, UUID, etc.).
- `contentMediaType` + `contentSchema` indicate the string contains
  encoded data (e.g. `"application/json"` with a nested schema).

**See**

- `StringMeta`
- `Check`

**Signature**

```ts
export interface String {
  readonly _tag: "String"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly checks: ReadonlyArray<Check<StringMeta>>
  readonly contentMediaType?: string | undefined
  readonly contentSchema?: Representation | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L245)

Since v4.0.0