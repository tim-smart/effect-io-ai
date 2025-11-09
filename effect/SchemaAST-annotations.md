Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.annotations

Merges a set of new annotations with existing ones, potentially overwriting
any duplicates.

Any previously existing identifier annotations are deleted.

**Signature**

```ts
declare const annotations: (ast: AST, overrides: Annotations) => AST
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L2086)

Since v3.10.0