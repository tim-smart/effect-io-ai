Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.String

The `string` type with optional validation checks.

**Details**

`checks` holds string-specific constraints, such as min/max length, pattern,
and UUID checks. `contentMediaType` and `contentSchema` indicate that the
string contains encoded data, such as `"application/json"` with a nested
schema.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L260)

Since v4.0.0