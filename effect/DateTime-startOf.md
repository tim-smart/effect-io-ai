# startOf

Converts a `DateTime` to the start of the given `part`.

If the part is `week`, the `weekStartsOn` option can be used to specify the
day of the week that the week starts on. The default is 0 (Sunday).

To import and use `startOf` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.startOf
```

**Example**

```ts
import { DateTime } from "effect"

// returns "2024-01-01T00:00:00Z"
DateTime.unsafeMake("2024-01-01T12:00:00Z").pipe(DateTime.startOf("day"), DateTime.formatIso)
```

**Signature**

```ts
export declare const startOf: {
  (
    part: DateTime.UnitSingular,
    options?: { readonly weekStartsOn?: 0 | 1 | 2 | 3 | 4 | 5 | 6 | undefined }
  ): <A extends DateTime>(self: A) => A
  <A extends DateTime>(
    self: A,
    part: DateTime.UnitSingular,
    options?: { readonly weekStartsOn?: 0 | 1 | 2 | 3 | 4 | 5 | 6 | undefined }
  ): A
}
```
