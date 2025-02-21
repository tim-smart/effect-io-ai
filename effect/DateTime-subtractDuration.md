# subtractDuration

Subtract the given `Duration` from a `DateTime`.

To import and use `subtractDuration` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.subtractDuration
```

**Example**

```ts
import { DateTime } from "effect"

// subtract 5 minutes
DateTime.unsafeMake(0).pipe(DateTime.subtractDuration("5 minutes"))
```

**Signature**

```ts
export declare const subtractDuration: {
  (duration: Duration.DurationInput): <A extends DateTime>(self: A) => A
  <A extends DateTime>(self: A, duration: Duration.DurationInput): A
}
```
