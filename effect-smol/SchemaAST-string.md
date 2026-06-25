Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.string

Provides the singleton `String` AST instance.

**When to use**

Use as the shared `SchemaAST` node for unconstrained JavaScript strings.

**See**

- `String` for the AST node class
- `isString` for narrowing an AST to a string node

**Signature**

```ts
declare const string: String
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1333)

Since v4.0.0