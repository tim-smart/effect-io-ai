# lessThan

This filter checks whether the provided number is less than the specified maximum.

To import and use `lessThan` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.lessThan
```

**Signature**

```ts
export declare const lessThan: <A extends number>(
  max: number,
  annotations?: Annotations.Filter<A, A> | undefined
) => <I, R>(self: Schema<A, I, R>) => filter<Schema<A, I, R>>
```
