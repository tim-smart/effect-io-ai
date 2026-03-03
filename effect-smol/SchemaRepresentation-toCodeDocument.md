Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toCodeDocument

Generates TypeScript code strings from a `MultiDocument`.

- Use to produce source code for Schema definitions (e.g. for codegen tools).
- `options.reviver` can customize code generation for `Declaration`
  nodes. Return `undefined` to fall back to the default logic (which uses
  `generation` annotations or the encoded schema).
- Performs topological sorting of references to emit non-recursive
  definitions before their dependents.
- Produces sanitized JavaScript identifiers for `$ref` keys.

**Example** (Generating TypeScript code)

```ts
import { Schema, SchemaRepresentation } from "effect"

const Person = Schema.Struct({
  name: Schema.String,
  age: Schema.Int
})

const multi = SchemaRepresentation.toMultiDocument(
  SchemaRepresentation.fromAST(Person.ast)
)
const codeDoc = SchemaRepresentation.toCodeDocument(multi)
console.log(codeDoc.codes[0].runtime)
// Schema.Struct({ ... })
```

**See**

- `CodeDocument`
- `MultiDocument`
- `Reviver`

**Signature**

```ts
declare const toCodeDocument: (multiDocument: MultiDocument, options?: { readonly reviver?: Reviver<Code> | undefined; }) => CodeDocument
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L2284)

Since v4.0.0