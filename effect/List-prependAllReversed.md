# prependAllReversed

Prepends the specified prefix list (in reverse order) to the beginning of the
specified list.

To import and use `prependAllReversed` from the "List" module:

ts
import \* as List from "effect/List"
// Can be accessed like this
List.prependAllReversed
undefined

**Signature**

```ts
export declare const prependAllReversed: {
  <B>(prefix: List<B>): <A>(self: List<A>) => List<A | B>
  <A, B>(self: List<A>, prefix: List<B>): List<A | B>
}
```
