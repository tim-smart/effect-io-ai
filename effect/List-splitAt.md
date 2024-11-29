# splitAt

Splits the specified list into two lists at the specified index.

To import and use `splitAt` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.splitAt
undefined

**Signature**

```ts
export declare const splitAt: {
  (n: number): <A>(self: List<A>) => [beforeIndex: List<A>, fromIndex: List<A>]
  <A>(self: List<A>, n: number): [beforeIndex: List<A>, fromIndex: List<A>]
}
```
