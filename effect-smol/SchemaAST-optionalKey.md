Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.optionalKey

Marks an AST node's property key as optional by setting
`Context.isOptional` to `true`.

Also propagates the optional flag through the last link of the encoding
chain if present.

**See**

- `isOptional`
- `Context`

**Signature**

```ts
declare const optionalKey: <A extends AST>(ast: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2766)

Since v4.0.0