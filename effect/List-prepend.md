# prepend

Prepends the specified element to the beginning of the list.

To import and use `prepend` from the "List" module:

```ts
import * as List from 'effect/List'

// Can be accessed like this
List.prepend
```

**Signature**

```ts
export declare const prepend: {
  <B>(element: B): <A>(self: List<A>) => Cons<B | A>
  <A, B>(self: List<A>, element: B): Cons<A | B>
}
```
