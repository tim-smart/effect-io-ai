# finite

Ensures that the provided value is a finite number.

This schema filters out non-finite numeric values, allowing only finite numbers to pass through.

To import and use `finite` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.finite
```

**Signature**

```ts
export declare const finite: <A extends number>(
  options?: FilterAnnotations<A> | undefined
) => <R, I>(self: Schema<R, I, A>) => Schema<R, I, A>
```
