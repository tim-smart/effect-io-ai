# head

Get the first element of a `ReadonlyArray`, or `None` if the array is empty.

To import and use `head` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.head
```

**Signature**

```ts
export declare const head: <A, I, R>(self: Schema<readonly A[], I, R>) => Schema<Option.Option<A>, I, R>
```
