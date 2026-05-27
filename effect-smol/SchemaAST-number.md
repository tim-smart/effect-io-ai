Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.number

Singleton `Number` AST instance.

**When to use**

Use when you need the canonical `SchemaAST` node for schemas that accept any
JavaScript number value.

**See**

- `Number` for the AST node class and serialization behavior
- `Literal` for exact finite numeric literal AST nodes

**Signature**

```ts
declare const number: Number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1423)

Since v4.0.0