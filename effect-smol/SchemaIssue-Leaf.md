Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.Leaf

Union of all terminal (leaf) issue types that have no inner `Issue` children.

**When to use**

Use when constraining formatter hooks to only handle terminal nodes.
- Pattern-matching on the `_tag` of an issue when you only care about leaves.

**Details**

Members: `InvalidType`, `InvalidValue`, `MissingKey`,
`UnexpectedKey`, `Forbidden`, `OneOf`.

**See**

- `Issue` — the full union including composite nodes
- `LeafHook` — formatter hook that operates on `Leaf` values

**Signature**

```ts
type Leaf = | InvalidType
  | InvalidValue
  | MissingKey
  | UnexpectedKey
  | Forbidden
  | OneOf
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L146)

Since v4.0.0