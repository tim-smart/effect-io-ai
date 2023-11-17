# contains

Returns a function that checks if a `ReadonlyArray` contains a given value using the default `Equivalence`.

To import and use `contains` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.contains
```

**Signature**

```ts
export declare const contains: { <A>(a: A): (self: Iterable<A>) => boolean; <A>(self: Iterable<A>, a: A): boolean }
```
