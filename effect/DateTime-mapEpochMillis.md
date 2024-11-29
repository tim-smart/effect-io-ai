# mapEpochMillis

Transform a `DateTime` by applying a function to the number of milliseconds
since the Unix epoch.

To import and use `mapEpochMillis` from the "DateTime" module:

ts
import \* as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.mapEpochMillis
undefined

**Example**

```ts
import { DateTime } from "effect"

// add 10 milliseconds
DateTime.unsafeMake(0).pipe(DateTime.mapEpochMillis((millis) => millis + 10))
```

**Signature**

```ts
export declare const mapEpochMillis: {
  (f: (millis: number) => number): <A extends DateTime>(self: A) => DateTime.PreserveZone<A>
  <A extends DateTime>(self: A, f: (millis: number) => number): DateTime.PreserveZone<A>
}
```
