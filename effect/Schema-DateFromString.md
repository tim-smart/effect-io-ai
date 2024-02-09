# DateFromString

Represents a schema that converts a `string` into a (potentially invalid) `Date` (e.g., `new Date("Invalid Date")` is not rejected).

To import and use `DateFromString` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.DateFromString
```

**Signature**

```ts
export declare const DateFromString: Schema<Date, string, never>
```
