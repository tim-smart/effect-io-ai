# allocate

Creates a new `Array` of the specified length.

To import and use `allocate` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.allocate
```

**Signature**

```ts
export declare const allocate: <A = never>(n: number) => (A | undefined)[]
```
