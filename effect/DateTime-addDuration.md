# addDuration

Add the given `Duration` to a `DateTime`.

To import and use `addDuration` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.addDuration
undefined

**Example**

```ts
import { DateTime } from "effect"

// add 5 minutes
DateTime.unsafeMake(0).pipe(DateTime.addDuration("5 minutes"))
```

**Signature**

```ts
export declare const addDuration: {
  (duration: Duration.DurationInput): <A extends DateTime>(self: A) => DateTime.PreserveZone<A>
  <A extends DateTime>(self: A, duration: Duration.DurationInput): DateTime.PreserveZone<A>
}
```
