# exists

Determines whether any element of the `Iterable[A]` satisfies the effectual
predicate `f`.

To import and use `exists` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.exists
undefined

**Signature**

```ts
export declare const exists: {
  <A, R, E>(predicate: (a: NoInfer<A>) => STM<boolean, E, R>): (iterable: Iterable<A>) => STM<boolean, E, R>
  <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<boolean, E, R>): STM<boolean, E, R>
}
```
