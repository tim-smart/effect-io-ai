Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Void

AST node matching TypeScript `void` return-value semantics.

**When to use**

Use when you need an AST node for a value whose result is intentionally
ignored.

**Details**

Parsers built from this node accept any present runtime input and map it to
`undefined`. Public schemas built from it may still expose `void` as their
typed decoded and encoded representation.

**See**

- `undefined` for the AST singleton that matches only exact `undefined`
- `void`
- `isVoid`

**Signature**

```ts
declare class Void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L815)

Since v4.0.0