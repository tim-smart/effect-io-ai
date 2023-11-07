# prependAll

Prepends the specified prefix list to the beginning of the specified list.

To import and use `prependAll` from the "List" module:

```ts
import * as List from 'effect/List'

// Can be accessed like this
List.prependAll
```

**Signature**

```ts
export declare const prependAll: {
  <B>(prefix: List<B>): <A>(self: List<A>) => List<B | A>
  <A, B>(self: List<A>, prefix: List<B>): List<A | B>
}
```
