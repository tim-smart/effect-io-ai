# greaterThanOrEqualTo

This filter checks whether the provided number is greater than or equal to the specified minimum.

To import and use `greaterThanOrEqualTo` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.greaterThanOrEqualTo
```

**Signature**

```ts
export declare const greaterThanOrEqualTo: <A extends number>(
  min: number,
  annotations?: Annotations.Filter<A, A> | undefined
) => <I, R>(self: Schema<A, I, R>) => filter<Schema<A, I, R>>
```
