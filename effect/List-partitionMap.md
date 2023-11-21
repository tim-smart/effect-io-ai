# partitionMap

Partition a list into two lists, where the first list contains all elements
for which the specified function returned a `Left`, and the second list
contains all elements for which the specified function returned a `Right`.

To import and use `partitionMap` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.partitionMap
```

**Signature**

```ts
export declare const partitionMap: {
  <A, B, C>(f: (a: A) => Either.Either<B, C>): (self: List<A>) => [left: List<B>, right: List<C>]
  <A, B, C>(self: List<A>, f: (a: A) => Either.Either<B, C>): [left: List<B>, right: List<C>]
}
```
