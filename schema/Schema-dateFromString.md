# dateFromString

A combinator that converts a `string` into a potentially **invalid** `Date` (e.g., `new Date("Invalid Date")` is not rejected).

To import and use `dateFromString` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.dateFromString
```

**Signature**

```ts
export declare const dateFromString: <I, A extends string>(self: Schema<I, A>) => Schema<I, Date>
```
