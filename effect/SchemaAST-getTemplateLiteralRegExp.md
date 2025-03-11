## getTemplateLiteralRegExp

Generates a regular expression from a `TemplateLiteral` AST node.

**See**

- `getTemplateLiteralCapturingRegExp` for a variant that captures the pattern.

**Signature**

```ts
declare const getTemplateLiteralRegExp: (ast: TemplateLiteral) => RegExp
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L2155)

Since v3.10.0