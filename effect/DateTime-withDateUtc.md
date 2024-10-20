# withDateUtc

Using the time zone adjusted `Date`, apply a function to the `Date` and
return the result.

To import and use `withDateUtc` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.withDateUtc
```

**Example**

```ts
import { DateTime } from "effect"

// get the date in milliseconds
DateTime.unsafeMake(0).pipe(DateTime.withDateUtc((date) => date.getTime()))
```

**Signature**

```ts
export declare const withDateUtc: {
  <A>(f: (date: Date) => A): (self: DateTime) => A
  <A>(self: DateTime, f: (date: Date) => A): A
}
```
