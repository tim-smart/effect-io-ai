# validDate

Defines a filter that specifically rejects invalid dates, such as `new
Date("Invalid Date")`. This filter ensures that only properly formatted and
valid date objects are accepted, enhancing data integrity by preventing
erroneous date values from being processed.

To import and use `validDate` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.validDate
```

**Signature**

```ts
export declare const validDate: <S extends Schema.Any>(
  annotations?: Annotations.Filter<Schema.Type<S>>
) => <A extends Date>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => filter<S>
```
