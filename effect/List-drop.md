# drop

Drops the first `n` elements from the specified list.

To import and use `drop` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.drop
undefined

**Signature**

```ts
export declare const drop: { (n: number): <A>(self: List<A>) => List<A>; <A>(self: List<A>, n: number): List<A> }
```
