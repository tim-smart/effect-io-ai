Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.resolveAt

Returns a single annotation value by key from the AST node.

Like `resolve`, reads from the last check's annotations when checks
are present. Returns `undefined` if the key is not found.

**See**

- `resolve`

**Signature**

```ts
declare const resolveAt: <A>(key: string) => (ast: AST) => A | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L3362)

Since v4.0.0