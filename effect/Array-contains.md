# contains

Returns a function that checks if a `ReadonlyArray` contains a given value using the default `Equivalence`.

To import and use `contains` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.contains
```

**Signature**

```ts
export declare const contains: { <A>(a: A): (self: Iterable<A>) => boolean; <A>(self: Iterable<A>, a: A): boolean }
```
