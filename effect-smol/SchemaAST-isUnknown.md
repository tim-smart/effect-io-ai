Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isUnknown

Narrows an `AST` to `Unknown`.

**When to use**

Use when you need to inspect a schema AST and handle the `Unknown` node
variant specifically.

**See**

- `isAny` for the guard for the `Any` node, whose parsed result is typed as `any` rather than `unknown`

**Signature**

```ts
declare const isUnknown: (ast: AST) => ast is Unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L189)

Since v4.0.0