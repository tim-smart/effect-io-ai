Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Union

AST node representing a union of schemas.

- `types` — the member AST nodes.
- `mode` — `"anyOf"` succeeds on the first match (like TypeScript unions);
  `"oneOf"` requires exactly one member to match (fails if multiple do).

During parsing, members are tried in order. An internal candidate index
narrows which members to try based on the runtime type of the input and
discriminant ("sentinel") fields, making large unions efficient.

**Example** (Inspecting a union AST)

```ts
import { Schema, SchemaAST } from "effect"

const schema = Schema.Union([Schema.String, Schema.Number])
const ast = schema.ast

if (SchemaAST.isUnion(ast)) {
  console.log(ast.types.length) // 2
  console.log(ast.mode)         // "anyOf"
}
```

**See**

- `isUnion`

**Signature**

```ts
declare class Union<A> { constructor(
    types: ReadonlyArray<A>,
    mode: "anyOf" | "oneOf",
    annotations?: Schema.Annotations.Annotations,
    checks?: Checks,
    encoding?: Encoding,
    context?: Context
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2223)

Since v4.0.0