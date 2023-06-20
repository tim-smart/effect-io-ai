# map

Applies the specified mapping function to each element of the list.

To import and use `map` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): (self: List<A>) => List<B>
  <A, B>(self: List<A>, f: (a: A) => B): List<B>
}
```
