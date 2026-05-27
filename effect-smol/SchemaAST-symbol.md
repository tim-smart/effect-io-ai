Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.symbol

Singleton `Symbol` AST instance.

**When to use**

Use when building an AST that should match any JavaScript symbol value.

**Gotchas**

String-based codecs can encode only symbols registered with `Symbol.for`,
because the implementation uses `Symbol.keyFor`.

**See**

- `UniqueSymbol` for an AST node that matches one specific symbol

**Signature**

```ts
declare const symbol: Symbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1512)

Since v4.0.0