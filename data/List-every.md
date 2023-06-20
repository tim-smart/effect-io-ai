# every

Returns `true` if all elements of the specified list satisfy the specified
predicate, `false` otherwise.

To import and use `every` from the "List" module:

```ts
import * as List from '@effect/data/List'

// Can be accessed like this
List.every
```

**Signature**

```ts
export declare const every: {
  <A>(predicate: Predicate<A>): (self: List<A>) => boolean
  <A>(self: List<A>, predicate: Predicate<A>): boolean
}
```
