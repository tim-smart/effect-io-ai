# every

Determines whether all elements of the `Iterable<A>` satisfy the effectual
predicate.

To import and use `every` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.every
```

**Signature**

```ts
export declare const every: {
  <A, R, E>(predicate: (a: A) => STM<R, E, boolean>): (iterable: Iterable<A>) => STM<R, E, boolean>
  <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<R, E, boolean>): STM<R, E, boolean>
}
```
