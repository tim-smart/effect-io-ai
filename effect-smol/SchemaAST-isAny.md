Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.isAny

Narrows an `AST` to `Any`.

**When to use**

Use when you need to inspect a schema AST and handle the `Any` node
variant specifically.

**See**

- `isUnknown` for the guard for the `Unknown` node, whose parsed result is typed as `unknown` rather than `any`

**Signature**

```ts
declare const isAny: (ast: AST) => ast is Any
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L203)

Since v4.0.0