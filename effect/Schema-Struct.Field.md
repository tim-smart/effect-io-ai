Package: `effect`<br />
Module: `Schema`<br />

## Schema.Struct.Field

Useful for creating a type that can be used to add custom constraints to the fields of a struct.

```ts
import { Schema } from "effect"

const f = <Fields extends Record<"a" | "b", Schema.Struct.Field>>(
  schema: Schema.Struct<Fields>
) => {
  return schema.omit("a")
}

//      ┌─── Schema.Struct<{ b: typeof Schema.Number; }>
//      ▼
const result = f(Schema.Struct({ a: Schema.String, b: Schema.Number }))
```

**Signature**

```ts
type Field = | Schema.All
    | PropertySignature.All
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2587)

Since v3.13.11