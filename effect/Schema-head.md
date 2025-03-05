# head

Get the first element of a `ReadonlyArray`, or `None` if the array is empty.

To import and use `head` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.head
```

**Signature**

```ts
export declare function head<S extends Schema.Any, A extends ReadonlyArray<unknown>>(
  self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>
): transform<S, OptionFromSelf<SchemaClass<A[number]>>>
```
