# head

Get the first element of a `Iterable`, or `None` if the `Iterable` is empty.

To import and use `head` from the "Iterable" module:

ts
import \* as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.head
undefined

**Signature**

```ts
export declare const head: <A>(self: Iterable<A>) => Option<A>
```
