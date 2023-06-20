# flatMap

Flat maps a list using the specified function.

To import and use `flatMap` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <A, B>(f: (a: A) => List<B>): (self: List<A>) => List<B>
  <A, B>(self: List<A>, f: (a: A) => List<B>): List<B>
}
```
