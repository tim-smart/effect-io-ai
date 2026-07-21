Package: `effect`<br />
Module: `Schema`<br />

## Schema.isSchemaError

Returns `true` if `u` is a `SchemaError`.

**Example** (Narrowing Schema errors in a catch block)

```ts
import { Schema } from "effect"

try {
  Schema.decodeUnknownSync(Schema.Number)("oops")
} catch (err) {
  if (Schema.isSchemaError(err)) {
    console.log(err._tag) // "SchemaError"
  }
}
```

**Signature**

```ts
declare const isSchemaError: (u: unknown) => u is SchemaError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L1053)

Since v4.0.0