Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Objects

AST node for object-like types — both structs and records.

- `propertySignatures` — named properties with their types (struct fields).
- `indexSignatures` — index signature entries (record patterns), each with
  a `parameter` AST (the key type) and a `type` AST (the value type).

An `Objects` with no properties and no index signatures acts as a bare
`object | array` type check (accepts any non-nullish value).

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1693)

Since v4.0.0