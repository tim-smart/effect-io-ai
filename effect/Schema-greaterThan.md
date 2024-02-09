# greaterThan

This filter checks whether the provided number is greater than the specified minimum.

To import and use `greaterThan` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.greaterThan
```

**Signature**

```ts
export declare const greaterThan: <A extends number>(
  min: number,
  options?: FilterAnnotations<A> | undefined
) => <I, R>(self: Schema<A, I, R>) => Schema<A, I, R>
```
