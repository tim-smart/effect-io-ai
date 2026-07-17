Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.CheckHook

Callback type used to format `Filter` issues into strings.

**When to use**

Use when customizing how `makeFormatterStandardSchemaV1` renders
filter failures.

**Details**

- Returns `string` to override the message, or `undefined` to fall back to
  the default formatting.

**See**

- `defaultCheckHook` — the built-in implementation
- `Filter` — the issue type this hook formats

**Signature**

```ts
type CheckHook = (issue: Filter) => string | undefined
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaIssue.ts#L936)

Since v4.0.0