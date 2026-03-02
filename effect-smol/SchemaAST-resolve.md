Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.resolve

Returns all annotations from the AST node.

If the node has `Checks`, returns annotations from the last check
(which is where user-supplied annotations end up after `.pipe(Schema.annotations(...))`).
Otherwise returns `Base.annotations` directly.

**Example** (Reading annotations)

```ts
import { Schema, SchemaAST } from "effect"

const schema = Schema.String.annotate({ title: "Name" })
const annotations = SchemaAST.resolve(schema.ast)
console.log(annotations?.title) // "Name"
```

**See**

- `resolveAt`
- `resolveIdentifier`
- `resolveTitle`
- `resolveDescription`

**Signature**

```ts
declare const resolve: (ast: AST) => Schema.Annotations.Annotations | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L3314)

Since v4.0.0