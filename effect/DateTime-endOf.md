# endOf

Converts a `DateTime` to the end of the given `part`.

If the part is `week`, the `weekStartsOn` option can be used to specify the
day of the week that the week starts on. The default is 0 (Sunday).

To import and use `endOf` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.endOf
```

**Example**

```ts
import { DateTime } from "effect"

// returns "2024-01-01T23:59:59.999Z"
DateTime.unsafeMake("2024-01-01T12:00:00Z").pipe(DateTime.endOf("day"), DateTime.formatIso)
```

**Signature**

```ts
export declare const endOf: {
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
