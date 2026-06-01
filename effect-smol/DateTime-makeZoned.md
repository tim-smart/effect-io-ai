Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.makeZoned

Creates a `DateTime.Zoned` safely from an input and a time zone.

**Details**

By default, the input is interpreted as a UTC instant and the time zone is
attached without changing that instant. When `adjustForTimeZone` is `true`,
the input is interpreted as wall-clock time in the target zone.

When `adjustForTimeZone` is `true`, `disambiguation` controls
daylight-saving gaps and repeated times:

- `"compatible"` (default): chooses the earlier occurrence for repeated
  times and the later interpretation for gaps
- `"earlier"`: chooses the earlier possible instant
- `"later"`: chooses the later possible instant
- `"reject"`: rejects ambiguous or nonexistent wall-clock times

Returns `Some` when construction succeeds, or `None` when the input, time
zone, or disambiguation cannot be resolved.

**Example** (Creating optional zoned DateTime values)

```ts
import { DateTime } from "effect"

const result = DateTime.makeZoned("2024-06-15T14:30:00Z", {
  timeZone: "Europe/London"
})

console.log(result._tag) // "Some"
if (result._tag === "Some") {
  console.log(DateTime.formatIsoZoned(result.value)) // "2024-06-15T15:30:00.000+01:00[Europe/London]"
}
```

**Signature**

```ts
declare const makeZoned: (input: DateTime.Input, options?: { readonly timeZone?: number | string | TimeZone | undefined; readonly adjustForTimeZone?: boolean | undefined; readonly disambiguation?: Disambiguation | undefined; }) => Option.Option<Zoned>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L779)

Since v3.6.0