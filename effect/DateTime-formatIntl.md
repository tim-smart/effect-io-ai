# formatIntl

Format a `DateTime` as a string using the `DateTimeFormat` API.

To import and use `formatIntl` from the "DateTime" module:

```ts
import * as DateTime from "effect/DateTime"
// Can be accessed like this
DateTime.formatIntl
```

**Signature**

```ts
export declare const formatIntl: {
  (format: Intl.DateTimeFormat): (self: DateTime) => string
  (self: DateTime, format: Intl.DateTimeFormat): string
}
```
