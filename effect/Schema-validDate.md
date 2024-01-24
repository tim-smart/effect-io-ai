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
  options?: FilterAnnotations<Date>
) => <R, I>(self: Schema<R, I, Date>) => Schema<R, I, Date>
```
