Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.boolean

Provides the singleton `Boolean` AST instance.

**When to use**

Use to reuse the standard AST node that accepts either `true` or `false` when
constructing schema ASTs directly.

**See**

- `Boolean` for the AST node class
- `Literal` for exact boolean literal AST nodes

**Signature**

```ts
declare const boolean: Boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1471)

Since v4.0.0