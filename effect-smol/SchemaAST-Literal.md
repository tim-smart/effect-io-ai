Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Literal

AST node matching an exact primitive value (string, number, boolean, or
bigint).

**Details**

Parsing succeeds only when the input is strictly equal (`===`) to the
stored `literal`. Numeric literals must be finite — `Infinity`, `-Infinity`,
and `NaN` are rejected at construction time.

**Example** (Creating a literal AST)

```ts
import { SchemaAST } from "effect"

const ast = new SchemaAST.Literal("active")
console.log(ast.literal) // "active"
```

**See**

- `LiteralValue`
- `isLiteral`

**Signature**

```ts
declare class Literal { constructor(
    literal: LiteralValue,
    annotations?: Schema.Annotations.Annotations,
    checks?: Checks,
    encoding?: Encoding,
    context?: Context
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1278)

Since v3.10.0