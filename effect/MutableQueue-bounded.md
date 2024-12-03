# bounded

Creates a new bounded `MutableQueue`.

To import and use `bounded` from the "MutableQueue" module:

```ts
import * as MutableQueue from "effect/MutableQueue"
// Can be accessed like this
MutableQueue.bounded
```

**Signature**

```ts
export declare const bounded: <A>(capacity: number) => MutableQueue<A>
```
