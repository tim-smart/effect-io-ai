Package: `effect`<br />
Module: `Schema`<br />

## Schema.optionalKey

Creates an exact optional key schema for struct fields. Unlike `optional`,
this creates exact optional properties (not `| undefined`) that can be
completely omitted from the object.

**Example** (Creating a struct with optional key)

```ts
import { Schema } from "effect"

const schema = Schema.Struct({
  name: Schema.String,
  age: Schema.optionalKey(Schema.Number)
})

// Type: { readonly name: string; readonly age?: number }
type Person = typeof schema["Type"]
```

**Signature**

```ts
declare const optionalKey: optionalKeyLambda
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L947)

Since v4.0.0