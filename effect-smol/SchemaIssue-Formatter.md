Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Formatter

A function type that converts an `Issue` into a formatted
representation. Specialisation of the generic `Formatter` from
`Formatter.ts` with `Value` fixed to `Issue`.

When to use:

- Type custom formatters that accept an `Issue` and return any output format.
- Use with `makeFormatterDefault` or
  `makeFormatterStandardSchemaV1` to obtain built-in implementations.

**See**

- `makeFormatterDefault` — creates a `Formatter<string>`
- `makeFormatterStandardSchemaV1` — creates a
  `Formatter<StandardSchemaV1.FailureResult>`

**Signature**

```ts
export interface Formatter<out Format> extends FormatterI<Issue, Format> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L914)

Since v4.0.0