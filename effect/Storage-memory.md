# memory

A layer that stores data in-memory.
This is useful for testing with a single pod only.

To import and use `memory` from the "Storage" module:

ts
import \* as Storage from "@effect/cluster/Storage"
// Can be accessed like this
Storage.memory
undefined

**Signature**

```ts
export declare const memory: Layer.Layer<Storage, never, never>
```
