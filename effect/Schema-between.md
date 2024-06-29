# between

This filter checks whether the provided number falls within the specified minimum and maximum values.

To import and use `between` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.between
```

**Signature**

```ts
export declare const between: <A extends number>(
  min: number,
  max: number,
  annotations?: Annotations.Filter<A, A> | undefined
) => <I, R>(self: Schema<A, I, R>) => filter<Schema<A, I, R>>
```
