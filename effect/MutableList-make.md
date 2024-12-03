# make

Creates a new `MutableList` from the specified elements.

To import and use `make` from the "MutableList" module:

```ts
import * as MutableList from "effect/MutableList"
// Can be accessed like this
MutableList.make
```

**Signature**

```ts
export declare const make: <A>(...elements: ReadonlyArray<A>) => MutableList<A>
```
