# make

Makes a new `TArray` that is initialized with specified values.

To import and use `make` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.make
```

**Signature**

```ts
export declare const make: <Elements extends [any, ...any[]]>(
  ...elements: Elements
) => STM.STM<never, never, TArray<Elements[number]>>
```
