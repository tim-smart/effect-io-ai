Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isVoid

Narrows an `AST` to `Void`.

**When to use**

Use to identify AST nodes that represent the TypeScript `void` type before
handling `Void`-specific schema behavior.

**See**

- `isUndefined` for narrowing AST nodes that represent the literal `undefined` value instead of TypeScript `void`

**Signature**

```ts
declare const isVoid: (ast: AST) => ast is Void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L157)

Since v4.0.0