Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.CheckHook

Callback type used to format `Filter` issues into strings.

When to use:

- Pass a custom `CheckHook` to `makeFormatterStandardSchemaV1` to
  override how filter failures are rendered.

Behaviour:

- Returns `string` to override the message, or `undefined` to fall back to
  the default formatting.

**See**

- `defaultCheckHook` — the built-in implementation
- `Filter` — the issue type this hook formats

**Signature**

```ts
type CheckHook = (issue: Filter) => string | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L1019)

Since v4.0.0