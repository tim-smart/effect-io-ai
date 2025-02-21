# int

Ensures that the provided value is an integer number (excluding NaN, +Infinity, and -Infinity).

To import and use `int` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.int
```

**Signature**

```ts
export declare const int: <A extends number>(
  annotations?: Annotations.Filter<A>
) => <I, R>(self: Schema<A, I, R>) => filter<Schema<A, I, R>>
```
