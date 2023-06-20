# equalsWith

Returns `true` if the two lists are equal according to the provided function,
`false` otherwise.

To import and use `equalsWith` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.equalsWith
```

**Signature**

```ts
export declare const equalsWith: {
  <A, B>(that: List<B>, f: (a: A, b: B) => boolean): (self: List<A>) => boolean
  <A, B>(self: List<A>, that: List<B>, f: (a: A, b: B) => boolean): boolean
}
```
