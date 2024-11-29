# retainIf

Retains entries in a `TSet` that satisfy the specified predicate and returns the removed entries
(or `void` if `discard = true`).

To import and use `retainIf` from the "TSet" module:

ts
import \* as TSet from "effect/TSet"
// Can be accessed like this
TSet.retainIf
undefined

**Signature**

```ts
export declare const retainIf: {
  <A>(predicate: Predicate<A>, options: { readonly discard: true }): (self: TSet<A>) => STM.STM<void>
  <A>(predicate: Predicate<A>, options?: { readonly discard: false }): (self: TSet<A>) => STM.STM<Array<A>>
  <A>(self: TSet<A>, predicate: Predicate<A>, options: { readonly discard: true }): STM.STM<void>
  <A>(self: TSet<A>, predicate: Predicate<A>, options?: { readonly discard: false }): STM.STM<Array<A>>
}
```
