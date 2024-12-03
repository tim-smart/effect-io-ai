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
export declare const head: <A, I, R>(self: Schema<ReadonlyArray<A>, I, R>) => SchemaClass<option_.Option<A>, I, R>
```
