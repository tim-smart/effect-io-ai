Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.dateFromString

Decodes a `string` into a `Date` and encodes a `Date` back to a `string`.

When to use this:
- Parsing ISO 8601 date strings from APIs or user input.

Behavior:
- Decode: creates a `Date` from the string (like `new Date(s)`).
- Encode: converts the `Date` to an ISO string (like `date.toISOString()`),
  returning `"Invalid Date"` for invalid dates.

**Example** (Date from string)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.Date, SchemaTransformation.dateFromString)
)
```

See also:
- `numberFromString`
- `dateTimeUtcFromString`

**Signature**

```ts
declare const dateFromString: Transformation<Date, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L913)

Since v4.0.0