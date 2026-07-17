Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.UniqueSymbol

AST node matching a specific `unique symbol` value.

**Details**

Parsing succeeds only when the input is reference-equal to the stored
`symbol`.

**See**

- `isUniqueSymbol`

**Signature**

```ts
declare class UniqueSymbol { constructor(
    symbol: symbol,
    annotations?: Schema.Annotations.Annotations,
    checks?: Checks,
    encoding?: Encoding,
    context?: Context
  ) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L1181)

Since v3.10.0