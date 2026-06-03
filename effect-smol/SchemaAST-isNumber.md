Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isNumber

Narrows an `AST` to `Number`.

**When to use**

Use to detect `Number` AST nodes while inspecting, traversing, or transforming
schema ASTs.

**Signature**

```ts
declare const isNumber: (ast: AST) => ast is Number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L295)

Since v4.0.0