Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.void

Provides the singleton `Void` AST instance.

**When to use**

Use when constructing or comparing AST nodes for TypeScript `void` return
values whose result is intentionally ignored.

**Details**

The node parses any present runtime value as `undefined`; schemas may still
expose `void` on their typed decoded and encoded sides.

**See**

- `Void` for the AST node class
- `undefined` for the sibling AST singleton that matches exactly `undefined`
- `isVoid` for narrowing an AST to a `Void` node

**Signature**

```ts
declare const void: Void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L853)

Since v4.0.0