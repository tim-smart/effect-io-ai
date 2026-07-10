Package: `effect`<br />
Module: `SchemaTransformation`<br />

## SchemaTransformation.dateFromMillis

Decodes epoch milliseconds into a `Date` and encodes a `Date` back to epoch
milliseconds.

**When to use**

Use when you need a schema transformation for numeric timestamps represented
as milliseconds since the Unix epoch.

**Details**

Decoding creates a `Date` from the number like `new Date(ms)`. Encoding
returns the `Date` timestamp like `date.getTime()`.

**Gotchas**

This transformation does not validate date validity. `NaN`, `Infinity`, and
`-Infinity` decode to invalid `Date` instances.

**Example** (Converting milliseconds to a Date)

```ts
import { Schema, SchemaTransformation } from "effect"

const schema = Schema.Number.pipe(
  Schema.decodeTo(Schema.Date, SchemaTransformation.dateFromMillis)
)
```

**See**

- `dateFromString`
- `SchemaGetter.dateTimeUtcFromInput`

**Signature**

```ts
declare const dateFromMillis: Transformation<Date, number, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaTransformation.ts#L920)

Since v4.0.0