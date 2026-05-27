Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.defaultCheckHook

The built-in `CheckHook` used by default formatters.

**When to use**

Use as the default filter renderer when you only need to customise the
`LeafHook`.

**Details**

- Looks for a `message` annotation on the inner issue first, then on the
  filter itself.
- Returns `undefined` when no annotation is found, causing the formatter to
  fall back to `"Expected <filter>, got <actual>"`.

**See**

- `CheckHook`
- `makeFormatterStandardSchemaV1`

**Signature**

```ts
declare const defaultCheckHook: CheckHook
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L1040)

Since v4.0.0