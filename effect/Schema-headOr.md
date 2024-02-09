# headOr

Retrieves the first element of a `ReadonlyArray`.

If the array is empty, it returns the `fallback` argument if provided; otherwise, it fails.

To import and use `headOr` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.headOr
```

**Signature**

```ts
export declare const headOr: <A, I, R>(
  self: Schema<readonly A[], I, R>,
  fallback?: LazyArg<A> | undefined
) => Schema<A, I, R>
```
