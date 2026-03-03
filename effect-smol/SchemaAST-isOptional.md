Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isOptional

Returns `true` if the AST node represents an optional property.

Checks `ast.context?.isOptional`. Defaults to `false` when no
`Context` is set.

**See**

- `optionalKey`
- `Context`

**Signature**

```ts
declare const isOptional: (ast: AST) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2912)

Since v4.0.0