Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.defaultCheckHook

Returns the built-in `CheckHook` used by default formatters.

**When to use**

Use as the default filter renderer when customizing only the `LeafHook`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L1026)

Since v4.0.0