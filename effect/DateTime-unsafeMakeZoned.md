## unsafeMakeZoned

Create a `DateTime.Zoned` using `DateTime.unsafeMake` and a time zone.

The input is treated as UTC and then the time zone is attached, unless
`adjustForTimeZone` is set to `true`. In that case, the input is treated as
already in the time zone.

**Example**

```ts
import { DateTime } from "effect"

DateTime.unsafeMakeZoned(new Date(), { timeZone: "Europe/London" })
```

**Signature**

```ts
declare const unsafeMakeZoned: (input: DateTime.Input, options?: { readonly timeZone?: number | string | TimeZone | undefined; readonly adjustForTimeZone?: boolean | undefined; }) => Zoned
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L344)

Since v3.6.0