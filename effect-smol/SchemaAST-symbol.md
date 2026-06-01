Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.symbol

Provides the singleton `Symbol` AST instance.

**When to use**

Use to reuse the singleton AST node for schemas that match any JavaScript
symbol value.

**Gotchas**

String-based codecs can encode only symbols registered with `Symbol.for`,
because the implementation uses `Symbol.keyFor`.

**See**

- `UniqueSymbol` for an AST node that matches one specific symbol

**Signature**

```ts
declare const symbol: Symbol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1525)

Since v4.0.0