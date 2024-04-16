# make

Builds a `NonEmptyArray` from an non-empty collection of elements.

To import and use `make` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.make
```

**Signature**

```ts
export declare const make: <Elements extends [any, ...any[]]>(
  ...elements: Elements
) => [Elements[number], ...Elements[number][]]
```
