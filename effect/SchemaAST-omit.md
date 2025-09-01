Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.omit

Equivalent at runtime to the built-in TypeScript utility type `Omit`.

**Signature**

```ts
declare const omit: (ast: AST, keys: ReadonlyArray<PropertyKey>) => TypeLiteral | Transformation
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L2452)

Since v3.10.0