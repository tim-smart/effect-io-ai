# make

Makes a new `TSet` that is initialized with specified values.

To import and use `make` from the "TSet" module:

ts
import \* as TSet from "effect/TSet"
// Can be accessed like this
TSet.make
undefined

**Signature**

```ts
export declare const make: <Elements extends Array<any>>(...elements: Elements) => STM.STM<TSet<Elements[number]>>
```
