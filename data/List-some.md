# some

Check if a predicate holds true for some `List` element.

To import and use `some` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.some
```

**Signature**

```ts
export declare const some: {
  <A>(predicate: Predicate<A>): (self: List<A>) => boolean
  <A>(self: List<A>, predicate: Predicate<A>): boolean
}
```
