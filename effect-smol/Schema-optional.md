Package: `effect`<br />
Module: `Schema`<br />

## Schema.optional

Creates an optional schema field that allows both the specified type and
`undefined`.

This is equivalent to `optionalKey(UndefinedOr(schema))`, creating a field
that:
- Can be omitted from the object entirely
- Can be explicitly set to `undefined`
- Can contain the specified schema type

**Example** (Creating a struct with optional)

```ts
import { Schema } from "effect"

const schema = Schema.Struct({
  name: Schema.String,
  age: Schema.optionalKey(Schema.Number)
})

// Type: { readonly name: string; readonly age?: number | undefined }
type Person = typeof schema["Type"]
```

**Signature**

```ts
declare const optional: optionalLambda
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L997)

Since v4.0.0