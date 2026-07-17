Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Formatter

A function type that converts an `Issue` into a formatted
representation. Specialisation of the generic `Formatter` from
`Formatter.ts` with `Value` fixed to `Issue`.

**See**

- `makeFormatterDefault` — creates a `Formatter<string>`
- `makeFormatterStandardSchemaV1` — creates a `Formatter<StandardSchemaV1.FailureResult>`

**Signature**

```ts
export interface Formatter<out Format> extends FormatterI<Issue, Format> {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaIssue.ts#L846)

Since v4.0.0