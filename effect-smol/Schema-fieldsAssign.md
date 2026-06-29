Package: `effect`<br />
Module: `Schema`<br />

## Schema.fieldsAssign

Adds fields to a struct schema through a struct-mapping lambda.

**When to use**

Use to add the same fields to an existing struct or every struct member of a
union.

**Details**

This is a shortcut for `MyStruct.mapFields(Struct.assign(fields))`.

**Example** (Adding fields to a union of structs)

```ts
import { Schema, Tuple } from "effect"

// Add a new field to all members of a union of structs
const schema = Schema.Union([
  Schema.Struct({ a: Schema.String }),
  Schema.Struct({ b: Schema.Number })
]).mapMembers(Tuple.map(Schema.fieldsAssign({ c: Schema.Number })))
```

**Signature**

```ts
declare const fieldsAssign: <const NewFields extends Struct.Fields>(fields: NewFields) => fieldsAssign<NewFields>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3443)

Since v4.0.0