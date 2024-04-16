# flatten

Flattens an array of arrays into a single array by concatenating all arrays.

To import and use `flatten` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.flatten
```

**Signature**

```ts
export declare const flatten: <S extends readonly (readonly any[])[]>(self: S) => ReadonlyArray.Flatten<S>
```
