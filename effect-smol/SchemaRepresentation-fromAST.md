Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.fromAST

Converts a Schema AST into a `Document`.

- Use when you have a single schema and need its representation.
- Pure function; does not mutate the input AST.
- Shared/recursive sub-schemas are extracted into the `references` map.

**Example** (Converting a Schema to a Document)

```ts
import { Schema, SchemaRepresentation } from "effect"

const Person = Schema.Struct({
  name: Schema.String,
  age: Schema.Number
})

const doc = SchemaRepresentation.fromAST(Person.ast)
console.log(doc.representation._tag)
// "Objects"
```

**See**

- `Document`
- `fromASTs`

**Signature**

```ts
declare const fromAST: (ast: AST.AST) => Document
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L1612)

Since v4.0.0