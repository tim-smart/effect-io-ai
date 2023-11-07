# removeIf

Removes bindings matching predicate and returns the removed entries.

To import and use `removeIf` from the "TSet" module:

```ts
import * as TSet from 'effect/TSet'

// Can be accessed like this
TSet.removeIf
```

**Signature**

```ts
export declare const removeIf: {
  <A>(predicate: Predicate<A>): (self: TSet<A>) => STM.STM<never, never, A[]>
  <A>(self: TSet<A>, predicate: Predicate<A>): STM.STM<never, never, A[]>
}
```
