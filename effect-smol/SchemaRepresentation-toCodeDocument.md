Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toCodeDocument

Generates TypeScript code strings from a `MultiDocument`.

**When to use**

Use when you need to produce source code for Effect Schema definitions from a
schema representation `MultiDocument`.

**Details**

`options.reviver` can customize code generation for `Declaration`
nodes. Return `undefined` to fall back to the default logic, which uses
`generation` annotations or the encoded schema. References are
topologically sorted so non-recursive definitions are emitted before their
dependents. `$ref` keys are converted to sanitized JavaScript identifiers.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L2354)

Since v4.0.0