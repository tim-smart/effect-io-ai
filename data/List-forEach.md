# forEach

Applies the specified function to each element of the list.

To import and use `forEach` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A, B>(f: (a: A) => B): (self: List<A>) => void
  <A, B>(self: List<A>, f: (a: A) => B): void
}
```
