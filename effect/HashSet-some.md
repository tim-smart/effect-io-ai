# some

Check if a predicate holds true for some `HashSet` element.

To import and use `some` from the "HashSet" module:

ts
import \* as HashSet from "effect/HashSet"
// Can be accessed like this
HashSet.some
undefined

**Signature**

```ts
export declare const some: {
  <A>(f: Predicate<A>): (self: HashSet<A>) => boolean
  <A>(self: HashSet<A>, f: Predicate<A>): boolean
}
```
