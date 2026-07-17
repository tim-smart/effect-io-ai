Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.dateTimeUtcFromInput

Parses a `DateTime.Input` value into a `DateTime.Utc`.

**When to use**

Use when you need a schema getter to decode a present encoded date/time value
to a `DateTime.Utc`.

**Details**

- Accepted input includes existing `DateTime` values, partial date/time parts,
  instant objects, zoned instant objects, JavaScript `Date` instances, epoch
  milliseconds, and date strings.
- Converts successfully parsed values to UTC.
- Fails with `SchemaIssue.InvalidValue` if the input cannot be parsed as a valid
  `DateTime`.

**Example** (Parsing DateTime)

```ts
import { SchemaGetter } from "effect"

const parseDate = SchemaGetter.dateTimeUtcFromInput<string>()
// Getter<DateTime.Utc, string>
```

**See**

- `Date` for a simpler coercion to `Date` (no validation)

**Signature**

```ts
declare const dateTimeUtcFromInput: <E extends DateTime.DateTime.Input>() => Getter<DateTime.Utc, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaGetter.ts#L1524)

Since v4.0.0