Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.IndexSignature

An index signature entry within an `Objects` node.

- `parameter` — the key type AST (e.g. `String` for `string` keys,
  `TemplateLiteral` for patterned keys).
- `type` — the value type AST.
- `merge` — optional `KeyValueCombiner` for handling duplicate keys.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1632)

Since v4.0.0