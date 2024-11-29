# unsafeMakeZoned

Create a `DateTime.Zoned` using `DateTime.unsafeMake` and a time zone.

The input is treated as UTC and then the time zone is attached, unless
`adjustForTimeZone` is set to `true`. In that case, the input is treated as
already in the time zone.

To import and use `unsafeMakeZoned` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.unsafeMakeZoned
```

**Example**

```ts
import { DateTime } from "effect"

DateTime.unsafeMakeZoned(new Date(), { timeZone: "Europe/London" })
```

**Signature**

```ts
export declare const unsafeMakeZoned: (
  input: DateTime.Input,
  options?: {
    readonly timeZone?: number | string | TimeZone | undefined
    readonly adjustForTimeZone?: boolean | undefined
  }
) => Zoned
```
