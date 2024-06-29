# removeIf

Removes entries from a `TSet` that satisfy the specified predicate and returns the removed entries
(or `void` if `discard = true`).

To import and use `removeIf` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.removeIf
```

**Signature**

```ts
export declare const removeIf: {
  <A>(predicate: Predicate<A>, options: { readonly discard: true }): (self: TSet<A>) => STM.STM<void>
  <A>(predicate: Predicate<A>, options?: { readonly discard: false }): (self: TSet<A>) => STM.STM<A[], never, never>
  <A>(self: TSet<A>, predicate: Predicate<A>, options: { readonly discard: true }): STM.STM<void>
  <A>(self: TSet<A>, predicate: Predicate<A>, options?: { readonly discard: false }): STM.STM<A[], never, never>
}
```
