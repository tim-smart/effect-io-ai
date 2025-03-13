Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.makeZoned

Create a `DateTime.Zoned` using `DateTime.make` and a time zone.

The input is treated as UTC and then the time zone is attached.

If the date time input or time zone is invalid, `None` will be returned.

**Example**

```ts
import { DateTime } from "effect"

DateTime.makeZoned(new Date(), { timeZone: "Europe/London" })
```

**Signature**

```ts
declare const makeZoned: (input: DateTime.Input, options?: { readonly timeZone?: number | string | TimeZone | undefined; readonly adjustForTimeZone?: boolean | undefined; }) => Option.Option<Zoned>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L365)

Since v3.6.0