# layerStorage

Creates an KeyValueStorage from an instance of the `Storage` api.

To import and use `layerStorage` from the "KeyValueStore" module:

ts
import \* as KeyValueStore from "@effect/platform/KeyValueStore"
// Can be accessed like this
KeyValueStore.layerStorage
undefined

**Signature**

```ts
export declare const layerStorage: (evaluate: LazyArg<Storage>) => Layer.Layer<KeyValueStore>
```
