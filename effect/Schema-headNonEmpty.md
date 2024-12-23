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
export declare const headNonEmpty: <A, I, R>(
  self: Schema<array_.NonEmptyReadonlyArray<A>, I, R>
) => SchemaClass<A, I, R>
```
