# head

Returns the first element of the specified list, or `None` if the list is
empty.

To import and use `head` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.head
undefined

**Signature**

```ts
export declare const head: <A>(self: List<A>) => Option.Option<A>
```
