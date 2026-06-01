Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.IndexSignature

Represents an index signature entry within an `Objects` node.

**When to use**

Use when constructing or inspecting object AST entries for record-like keys
and values.

**Details**

- `parameter` — the key type AST (e.g. `String` for `string` keys,
  `TemplateLiteral` for patterned keys).
- `type` — the value type SchemaAST.
- `merge` — optional `KeyValueCombiner` for handling duplicate keys.

**Gotchas**

Using `Schema.optionalKey` on the value type is not allowed for index
signatures (throws at construction); use `Schema.optional` instead.

**See**

- `Objects`
- `PropertySignature`

**Signature**

```ts
declare class IndexSignature { constructor(
    parameter: AST,
    type: AST,
    merge: KeyValueCombiner | undefined
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1920)

Since v3.10.0