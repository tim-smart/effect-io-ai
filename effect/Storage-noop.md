# noop

A layer that does nothing, useful for testing.

To import and use `noop` from the "Storage" module:

ts
import \* as Storage from "@effect/cluster/Storage"
// Can be accessed like this
Storage.noop
undefined

**Signature**

```ts
export declare const noop: Layer.Layer<Storage, never, never>
```
