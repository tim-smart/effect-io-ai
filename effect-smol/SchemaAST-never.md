Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.never

Provides the singleton `Never` AST instance.

**When to use**

Use to reuse the canonical bottom-type AST node when constructing,
comparing, or returning ASTs.

**See**

- `Never` for the AST node class
- `isNever` for narrowing an AST to a `Never` node

**Signature**

```ts
declare const never: Never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L883)

Since v4.0.0