# every

Determines whether all elements of the `Iterable<A>` satisfy the effectual
predicate.

To import and use `every` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.every
undefined

**Signature**

```ts
export declare const every: {
  <A, R, E>(predicate: (a: NoInfer<A>) => STM<boolean, E, R>): (iterable: Iterable<A>) => STM<boolean, E, R>
  <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<boolean, E, R>): STM<boolean, E, R>
}
```
