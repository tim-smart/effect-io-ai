# headNonEmpty

Get the first element of a `NonEmptyReadonlyArray`.

To import and use `headNonEmpty` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.headNonEmpty
```

**Signature**

```ts
export declare function headNonEmpty<S extends Schema.Any, A extends array_.NonEmptyReadonlyArray<unknown>>(
  self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>
): transform<S, SchemaClass<A[number]>>
```
