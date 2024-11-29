# makeZoned

Create a `DateTime.Zoned` using `DateTime.make` and a time zone.

The input is treated as UTC and then the time zone is attached.

If the date time input or time zone is invalid, `None` will be returned.

To import and use `makeZoned` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.makeZoned
undefined

**Example**

```ts
import { DateTime } from "effect"

DateTime.makeZoned(new Date(), { timeZone: "Europe/London" })
```

**Signature**

```ts
export declare const makeZoned: (
  input: DateTime.Input,
  options?: {
    readonly timeZone?: number | string | TimeZone | undefined
    readonly adjustForTimeZone?: boolean | undefined
  }
) => Option.Option<Zoned>
```
