Package: `effect`<br />
Module: `Schema`<br />

## Schema.SchemaError

Error thrown (or returned as the error channel value) when schema decoding
or encoding fails.

The `issue` field contains a structured `Issue.Issue` tree describing
every validation failure, including the path to the problematic value,
expected types, and actual values received. `message` renders the issue tree
as a human-readable string.

Use `isSchemaError` to narrow an unknown value to `SchemaError`.

**Example** (Catching a SchemaError)

```ts
import { Schema } from "effect"

try {
  Schema.decodeUnknownSync(Schema.Number)("not a number")
} catch (err) {
  if (Schema.isSchemaError(err)) {
    console.log(err.message)
    // Expected number, actual "not a number"
  }
}
```

**Signature**

```ts
declare const SchemaError: typeof InternalSchema.SchemaError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L839)

Since v4.0.0