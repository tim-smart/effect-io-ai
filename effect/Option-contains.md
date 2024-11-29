# contains

Returns a function that checks if an `Option` contains a given value using the default `Equivalence`.

To import and use `contains` from the "Option" module:

ts
import \* as Option from "effect/Option"
// Can be accessed like this
Option.contains
undefined

**Signature**

```ts
export declare const contains: { <A>(a: A): (self: Option<A>) => boolean; <A>(self: Option<A>, a: A): boolean }
```
