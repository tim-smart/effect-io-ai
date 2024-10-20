# withDate

Using the time zone adjusted `Date`, apply a function to the `Date` and
return the result.

To import and use `withDate` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.withDate
```

**Example**

```ts
import { DateTime } from "effect"

// get the time zone adjusted date in milliseconds
DateTime.unsafeMakeZoned(0, { timeZone: "Europe/London" }).pipe(DateTime.withDate((date) => date.getTime()))
```

**Signature**

```ts
export declare const withDate: {
  <A>(f: (date: Date) => A): (self: DateTime) => A
  <A>(self: DateTime, f: (date: Date) => A): A
}
```
