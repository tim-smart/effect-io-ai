# filterMap

Filters and maps a list using the specified partial function. The resulting
list may be smaller than the input list due to the possibility of the partial
function not being defined for some elements.

To import and use `filterMap` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.filterMap
```

**Signature**

```ts
export declare const filterMap: {
  <A, B>(pf: (a: A) => Option.Option<B>): (self: Iterable<A>) => List<B>
  <A, B>(self: Iterable<A>, pf: (a: A) => Option.Option<B>): List<B>
}
```
