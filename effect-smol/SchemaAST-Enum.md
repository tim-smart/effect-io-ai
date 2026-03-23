Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Enum

AST node representing a TypeScript `enum`.

Holds `enums` as an array of `[name, value]` pairs where values are
`string | number`. Parsing succeeds when the input matches any enum value.

**See**

- `isEnum`

**Signature**

```ts
declare class Enum { constructor(
    enums: ReadonlyArray<readonly [string, string | number]>,
    annotations?: Schema.Annotations.Annotations,
    checks?: Checks,
    encoding?: Encoding,
    context?: Context
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L855)

Since v4.0.0