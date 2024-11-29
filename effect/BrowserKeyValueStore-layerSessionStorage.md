# layerSessionStorage

Creates a KeyValueStore layer that uses the browser's sessionStorage api. Values are stored only for the current session.

To import and use `layerSessionStorage` from the "BrowserKeyValueStore" module:

ts
import \* as BrowserKeyValueStore from "@effect/platform-browser/BrowserKeyValueStore"
// Can be accessed like this
BrowserKeyValueStore.layerSessionStorage
undefined

**Signature**

```ts
export declare const layerSessionStorage: Layer.Layer<KeyValueStore.KeyValueStore, never, never>
```
