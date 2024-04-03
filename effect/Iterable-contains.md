# contains

Returns a function that checks if a `Iterable` contains a given value using the default `Equivalence`.

To import and use `contains` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.contains
```

**Signature**

```ts
export declare const contains: { <A>(a: A): (self: Iterable<A>) => boolean; <A>(self: Iterable<A>, a: A): boolean }
```
