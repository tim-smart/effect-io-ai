# flatten

Flattens an array of arrays into a single array by concatenating all arrays.

To import and use `flatten` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.flatten
```

**Signature**

```ts
export declare const flatten: <S extends readonly (readonly any[])[]>(self: S) => ReadonlyArray.Flatten<S>
```
