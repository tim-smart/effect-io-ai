Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.LeafHook

Callback type used to format `Leaf` issues into strings.

**When to use**

Use when customizing how `makeFormatterStandardSchemaV1` renders
terminal issues.

**See**

- `defaultLeafHook` — the built-in implementation
- `Leaf` — the union of terminal issue types

**Signature**

```ts
type LeafHook = (issue: Leaf) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaIssue.ts#L862)

Since v4.0.0