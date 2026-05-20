Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Objects

AST node for object-like schemas, including structs and records.

**Details**

- `propertySignatures` — named properties with their types (struct fields).
- `indexSignatures` — index signature entries (record patterns), each with
  a `parameter` AST for matching keys and a `type` AST for values.

An `Objects` node with no properties and no index signatures performs only a
non-nullish check: it accepts any value except `null` and `undefined`,
including primitive values.

**Gotchas**

Duplicate property names throw at construction time.

**Example** (Inspecting a struct AST)

```ts
import { Schema, SchemaAST } from "effect"

const schema = Schema.Struct({ name: Schema.String })
const ast = schema.ast

if (SchemaAST.isObjects(ast)) {
  for (const ps of ast.propertySignatures) {
    console.log(ps.name, ps.type._tag)
  }
  // "name" "String"
}
```

**See**

- `isObjects`
- `PropertySignature`
- `IndexSignature`
- `Arrays`

**Signature**

```ts
declare class Objects { constructor(
    propertySignatures: ReadonlyArray<PropertySignature>,
    indexSignatures: ReadonlyArray<IndexSignature>,
    annotations?: Schema.Annotations.Annotations,
    checks?: Checks,
    encoding?: Encoding,
    context?: Context
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1747)

Since v4.0.0