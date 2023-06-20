# concat

Concatentates the specified lists together.

To import and use `concat` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.concat
```

**Signature**

```ts
export declare const concat: {
  <B>(that: List<B>): <A>(self: List<A>) => List<B | A>
  <A, B>(self: List<A>, that: List<B>): List<A | B>
}
```
