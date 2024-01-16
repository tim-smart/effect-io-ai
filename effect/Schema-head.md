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
export declare const head: <I, A>(value: Schema<I, A>) => Schema<readonly I[], Option.Option<A>>
```
