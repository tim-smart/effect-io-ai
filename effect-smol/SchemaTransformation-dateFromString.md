Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.dateFromString

Decodes a `string` into a `Date` and encodes a `Date` back to a `string`.

**When to use**

Use when you need a schema transformation to parse ISO 8601 date strings from
APIs or user input.

**Details**

Decoding creates a `Date` from the string like `new Date(s)`. Encoding
converts the `Date` to an ISO string like `date.toISOString()`, returning
`"Invalid Date"` for invalid dates.

**Example** (Date from string)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.String.pipe(
  Schema.decodeTo(Schema.Date, SchemaTransformation.dateFromString)
)
```

**See**

- `numberFromString`
- `dateTimeUtcFromString`

**Signature**

```ts
declare const dateFromString: Transformation<Date, string, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L952)

Since v4.0.0