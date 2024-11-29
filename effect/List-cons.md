# cons

Constructs a new `List.Cons<A>` from the specified `head` and `tail` values.

To import and use `cons` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.cons
undefined

**Signature**

```ts
export declare const cons: <A>(head: A, tail: List<A>) => Cons<A>
```
