# find

Searches a `Cause` using a partial function to extract information.

**Details**

This function allows you to search through a `Cause` using a custom partial
function. The partial function is applied to the `Cause`, and if it matches,
the result is returned wrapped in a `Some`. If no match is found, the result
is `None`.

This is particularly useful when you are only interested in specific types of
errors, defects, or interruption causes within a potentially complex `Cause`
structure. By leveraging a partial function, you can focus on extracting only
the relevant information you care about.

The partial function should return an `Option` indicating whether it matched
and the value it extracted.

To import and use `find` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.find
```

**Signature**

```ts
export declare const find: {
  <E, Z>(pf: (cause: Cause<E>) => Option.Option<Z>): (self: Cause<E>) => Option.Option<Z>
  <E, Z>(self: Cause<E>, pf: (cause: Cause<E>) => Option.Option<Z>): Option.Option<Z>
}
```
