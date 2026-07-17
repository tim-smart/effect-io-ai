Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isUndefined

Narrows an `AST` to `Undefined`.

**When to use**

Use to identify AST nodes that represent exactly the JavaScript `undefined`
value.

**See**

- `isVoid` for narrowing AST nodes that represent TypeScript `void` instead of exact `undefined`

**Signature**

```ts
declare const isUndefined: (ast: AST) => ast is Undefined
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L142)

Since v4.0.0