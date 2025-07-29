Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.makeZoned

Create a `DateTime.Zoned` using `DateTime.make` and a time zone.

The input is treated as UTC and then the time zone is attached, unless
`adjustForTimeZone` is set to `true`. In that case, the input is treated as
already in the time zone.

When `adjustForTimeZone` is true and ambiguous times occur during DST transitions,
the `disambiguation` option controls how to resolve the ambiguity:
- `compatible` (default): Choose earlier time for repeated times, later for gaps
- `earlier`: Always choose the earlier of two possible times
- `later`: Always choose the later of two possible times
- `reject`: Throw an error when ambiguous times are encountered

If the date time input or time zone is invalid, `None` will be returned.

**Example**

```ts
import { DateTime } from "effect"

DateTime.makeZoned(new Date(), { timeZone: "Europe/London" })
```

**Signature**

```ts
declare const makeZoned: (input: DateTime.Input, options?: { readonly timeZone?: number | string | TimeZone | undefined; readonly adjustForTimeZone?: boolean | undefined; readonly disambiguation?: Disambiguation | undefined; }) => Option.Option<Zoned>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L428)

Since v3.6.0