# headOrElse

Retrieves the first element of a `ReadonlyArray`.

If the array is empty, it returns the `fallback` argument if provided; otherwise, it fails.

To import and use `headOrElse` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.headOrElse
```

**Signature**

```ts
export declare const headOrElse: {
  <A>(fallback?: LazyArg<A> | undefined): <I, R>(self: Schema<readonly A[], I, R>) => SchemaClass<A, I, R>
  <A, I, R>(self: Schema<readonly A[], I, R>, fallback?: LazyArg<A> | undefined): SchemaClass<A, I, R>
}
```
