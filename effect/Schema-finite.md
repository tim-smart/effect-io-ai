# finite

Ensures that the provided value is a finite number (excluding NaN, +Infinity, and -Infinity).

To import and use `finite` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.finite
```

**Signature**

```ts
export declare const finite: <A extends number>(
  annotations?: Annotations.Filter<A>
) => <I, R>(self: Schema<A, I, R>) => filter<Schema<A, I, R>>
```
