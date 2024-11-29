# find

Uses the provided partial function to search the specified cause and attempt
to extract information from it.

To import and use `find` from the "Cause" module:

ts
import \* as Cause from "effect/Cause"
// Can be accessed like this
Cause.find
undefined

**Signature**

```ts
export declare const find: {
  <E, Z>(pf: (cause: Cause<E>) => Option.Option<Z>): (self: Cause<E>) => Option.Option<Z>
  <E, Z>(self: Cause<E>, pf: (cause: Cause<E>) => Option.Option<Z>): Option.Option<Z>
}
```
