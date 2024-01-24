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
  options?: FilterAnnotations<A> | undefined
) => <R, I>(self: Schema<R, I, A>) => Schema<R, I, A>
```
