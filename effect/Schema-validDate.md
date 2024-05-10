# validDate

A filter that **excludes invalid** dates (e.g., `new Date("Invalid Date")` is rejected).

To import and use `validDate` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.validDate
```

**Signature**

```ts
export declare const validDate: (
  annotations?: Annotations.Filter<Date>
) => <I, R>(self: Schema<Date, I, R>) => filter<Schema<Date, I, R>>
```
