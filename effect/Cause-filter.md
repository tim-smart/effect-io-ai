# filter

Filters causes which match the provided predicate out of the specified cause.

To import and use `filter` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.filter
```

**Signature**

```ts
export declare const filter: {
  <E>(predicate: Predicate<Cause<E>>): (self: Cause<E>) => Cause<E>
  <E>(self: Cause<E>, predicate: Predicate<Cause<E>>): Cause<E>
}
```
