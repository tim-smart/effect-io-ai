Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isNever

Narrows an `AST` to `Never`.

**When to use**

Use to detect the AST node for a schema that can never match before handling
other schema variants.

**See**

- `Never` for the AST node type narrowed by this guard
- `never` for the singleton `Never` AST instance

**Signature**

```ts
declare const isNever: (ast: AST) => ast is Never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L174)

Since v4.0.0