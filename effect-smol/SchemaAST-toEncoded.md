Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.toEncoded

Returns the encoded (wire-format) AST by flipping and then stripping
encodings.

Equivalent to `toType(flip(ast))`. This gives you the AST that describes
the shape of the serialized/encoded data.

- Memoized: same input reference → same output reference.
- Does not mutate the input.

**Example** (Getting the encoded AST)

```ts
import { Schema, SchemaAST } from "effect"

const schema = Schema.NumberFromString
const encodedAst = SchemaAST.toEncoded(schema.ast)
console.log(encodedAst._tag) // "String"
```

**See**

- `toType`
- `flip`

**Signature**

```ts
declare const toEncoded: (ast: AST) => AST
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2973)

Since v4.0.0