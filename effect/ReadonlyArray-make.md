# make

Builds a `NonEmptyArray` from an non-empty collection of elements.

To import and use `make` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.make
```

**Signature**

```ts
export declare const make: <Elements extends [any, ...any[]]>(
  ...elements: Elements
) => [Elements[number], ...Elements[number][]]
```
