# every

Check if a predicate holds true for every `List` element.

To import and use `every` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.every
```

**Signature**

```ts
export declare const every: {
  <A, B extends A>(refinement: Refinement<A, B>): (self: List<A>) => self is List<B>
  <A>(predicate: Predicate<A>): (self: List<A>) => boolean
  <A, B extends A>(self: List<A>, refinement: Refinement<A, B>): self is List<B>
  <A>(self: List<A>, predicate: Predicate<A>): boolean
}
```
