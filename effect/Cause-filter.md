# filter

Filters causes which match the provided predicate out of the specified cause.

To import and use `filter` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.filter
```

**Signature**

```ts
export declare const filter: {
  <E, EB extends E>(refinement: Refinement<Cause<NoInfer<E>>, Cause<EB>>): (self: Cause<E>) => Cause<EB>
  <E>(predicate: Predicate<Cause<NoInfer<E>>>): (self: Cause<E>) => Cause<E>
  <E, EB extends E>(self: Cause<E>, refinement: Refinement<Cause<E>, Cause<EB>>): Cause<EB>
  <E>(self: Cause<E>, predicate: Predicate<Cause<E>>): Cause<E>
}
```
