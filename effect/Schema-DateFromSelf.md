# DateFromSelf

Represents a schema for handling potentially **invalid** `Date` instances (e.g., `new Date("Invalid Date")` is not rejected).

To import and use `DateFromSelf` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.DateFromSelf
```

**Signature**

```ts
export declare const DateFromSelf: Schema<never, Date, Date>
```
