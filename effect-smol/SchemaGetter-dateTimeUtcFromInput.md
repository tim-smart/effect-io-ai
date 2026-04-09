Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.dateTimeUtcFromInput

Parses a `DateTime.Input` value (string, number, or Date) into a `DateTime.Utc`.

Use this when:
- An encoded value represents a date/time and should be decoded to a `DateTime.Utc`.

Behavior:
- Fails with `Issue.InvalidValue` if the input cannot be parsed as a valid DateTime.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L1541)

Since v4.0.0