# appendAll

Concatentates the specified lists together.

To import and use `appendAll` from the "List" module:

```ts
import * as List from "effect/List"
// Can be accessed like this
List.appendAll
```

**Signature**

```ts
export declare const appendAll: {
  <B>(that: List<B>): <A>(self: List<A>) => List<B | A>
  <A, B>(self: List<A>, that: List<B>): List<A | B>
}
```
