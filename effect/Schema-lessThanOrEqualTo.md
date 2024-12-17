# lessThanOrEqualTo

This schema checks whether the provided number is less than or equal to the specified maximum.

To import and use `lessThanOrEqualTo` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.lessThanOrEqualTo
```

**Signature**

```ts
export declare const lessThanOrEqualTo: <A extends number>(
  maximum: number,
  annotations?: Annotations.Filter<A>
) => <I, R>(self: Schema<A, I, R>) => filter<Schema<A, I, R>>
```
