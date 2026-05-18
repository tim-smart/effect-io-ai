Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.dateTimeUtcFromInput

Parses a `DateTime.Input` value into a `DateTime.Utc`.

Accepted input includes existing `DateTime` values, partial date/time parts,
instant objects, zoned instant objects, JavaScript `Date` instances, epoch
milliseconds, and date strings.

Use this when:
- An encoded value represents a date/time and should be decoded to a `DateTime.Utc`.

Behavior:
- Converts successfully parsed values to UTC.
- Fails with `Issue.InvalidValue` if the input cannot be parsed as a valid
  `DateTime`.

**Example** (Parse DateTime)

```ts
import { SchemaGetter } from "effect"

const parseDate = SchemaGetter.dateTimeUtcFromInput<string>()
// Getter<DateTime.Utc, string>
```

See also:
- `Date` — simpler coercion to `Date` (no validation)

**Signature**

```ts
declare const dateTimeUtcFromInput: <E extends DateTime.DateTime.Input>() => Getter<DateTime.Utc, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1554)

Since v4.0.0