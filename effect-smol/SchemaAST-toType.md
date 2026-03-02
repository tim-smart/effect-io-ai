Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.toType

Strips all encoding transformations from an AST, returning the decoded
(type-level) representation.

- Memoized: same input reference → same output reference.
- Recursively walks into composite nodes (`Arrays`, `Objects`,
  `Union`, `Suspend`).
- Does not mutate the input.

**Example** (Getting the type AST)

```ts
import { Schema, SchemaAST } from "effect"

const schema = Schema.NumberFromString
const typeAst = SchemaAST.toType(schema.ast)
console.log(typeAst._tag) // "Number"
```

**See**

- `toEncoded`
- `flip`

**Signature**

```ts
declare const toType: <A extends AST>(ast: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2935)

Since v4.0.0