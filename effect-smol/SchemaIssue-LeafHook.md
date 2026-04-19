Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.LeafHook

Callback type used to format `Leaf` issues into strings.

When to use:

- Pass a custom `LeafHook` to `makeFormatterStandardSchemaV1` to
  override how terminal issues are rendered.

**See**

- `defaultLeafHook` — the built-in implementation
- `Leaf` — the union of terminal issue types

**Signature**

```ts
type LeafHook = (issue: Leaf) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L943)

Since v4.0.0