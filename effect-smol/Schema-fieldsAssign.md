Package: `effect`<br />
Module: `Schema`<br />

## Schema.fieldsAssign

A shortcut for `MyStruct.mapFields(Struct.assign(fields))`. This is useful
when you want to add new fields to an existing struct or a union of structs.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2516)

Since v4.0.0