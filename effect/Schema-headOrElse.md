# headOrElse

Retrieves the first element of a `ReadonlyArray`.

If the array is empty, it returns the `fallback` argument if provided; otherwise, it fails.

To import and use `headOrElse` from the "Schema" module:

ts
import \* as Schema from "effect/Schema"
// Can be accessed like this
Schema.headOrElse
undefined

**Signature**

```ts
export declare const headOrElse: {
  <A>(fallback?: LazyArg<A>): <I, R>(self: Schema<ReadonlyArray<A>, I, R>) => SchemaClass<A, I, R>
  <A, I, R>(self: Schema<ReadonlyArray<A>, I, R>, fallback?: LazyArg<A>): SchemaClass<A, I, R>
}
```
