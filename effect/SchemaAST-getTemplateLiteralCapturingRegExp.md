## getTemplateLiteralCapturingRegExp

Generates a regular expression that captures the pattern defined by the given `TemplateLiteral` AST.

**See**

- `getTemplateLiteralRegExp` for a variant that does not capture the pattern.

**Signature**

```ts
declare const getTemplateLiteralCapturingRegExp: (ast: TemplateLiteral) => RegExp
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L2165)

Since v3.10.0