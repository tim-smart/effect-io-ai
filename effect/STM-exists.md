# exists

Determines whether any element of the `Iterable[A]` satisfies the effectual
predicate `f`.

To import and use `exists` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.exists
```

**Signature**

```ts
export declare const exists: {
  <A, R, E>(predicate: (a: A) => STM<R, E, boolean>): (iterable: Iterable<A>) => STM<R, E, boolean>
  <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<R, E, boolean>): STM<R, E, boolean>
}
```
