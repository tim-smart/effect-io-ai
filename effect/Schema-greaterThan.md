# greaterThan

This filter checks whether the provided number is greater than the specified minimum.

To import and use `greaterThan` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.greaterThan
```

**Signature**

```ts
export declare const greaterThan: <A extends number>(
  min: number,
  annotations?: Annotations.Filter<A>
) => <I, R>(self: Schema<A, I, R>) => filter<Schema<A, I, R>>
```
