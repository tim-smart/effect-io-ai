# format

Converts a `Duration` to a human readable string.

To import and use `format` from the "Duration" module:

```ts
import * as Duration from "effect/Duration"
// Can be accessed like this
Duration.format
```

**Example**

```ts
import * as Duration from "effect/Duration"

Duration.format(Duration.millis(1000)) // "1s"
Duration.format(Duration.millis(1001)) // "1s 1ms"
```

**Signature**

```ts
export declare const format: (self: DurationInput) => string
```
