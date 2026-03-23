Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Arrays

AST node for array-like types — both tuples and arrays.

- `elements` — positional element types (tuple elements). An element is
  optional if its `Context.isOptional` is `true`.
- `rest` — the rest/variadic element types. When non-empty, the first
  entry is the "spread" type (e.g. `...Array<string>`), and subsequent
  entries are trailing positional elements after the spread.
- `isMutable` — whether the resulting array is `readonly` (`false`) or
  mutable (`true`).

Construction enforces TypeScript ordering rules: a required element
cannot follow an optional one, and an optional element cannot follow a
rest element.

**Example** (Inspecting a tuple AST)

```ts
import { Schema, SchemaAST } from "effect"

const schema = Schema.Tuple([Schema.String, Schema.Number])
const ast = schema.ast

if (SchemaAST.isArrays(ast)) {
  console.log(ast.elements.length) // 2
  console.log(ast.rest.length)     // 0
}
```

**See**

- `isArrays`
- `Objects`

**Signature**

```ts
declare class Arrays { constructor(
    isMutable: boolean,
    elements: ReadonlyArray<AST>,
    rest: ReadonlyArray<AST>,
    annotations?: Schema.Annotations.Annotations,
    checks?: Checks,
    encoding?: Encoding,
    context?: Context
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1340)

Since v4.0.0