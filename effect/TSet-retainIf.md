# retainIf

Retains entries in a `TSet` that satisfy the specified predicate and returns the removed entries
(or `void` if `discard = true`).

To import and use `retainIf` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.retainIf
```

**Signature**

```ts
export declare const retainIf: {
  <A>(predicate: Predicate<A>, options: { readonly discard: true }): (self: TSet<A>) => STM.STM<never, never, void>
  <A>(predicate: Predicate<A>, options?: { readonly discard: false }): (self: TSet<A>) => STM.STM<never, never, A[]>
  <A>(self: TSet<A>, predicate: Predicate<A>, options: { readonly discard: true }): STM.STM<never, never, void>
  <A>(self: TSet<A>, predicate: Predicate<A>, options?: { readonly discard: false }): STM.STM<never, never, A[]>
}
```
