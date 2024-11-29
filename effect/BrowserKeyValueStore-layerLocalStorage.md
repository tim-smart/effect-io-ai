# layerLocalStorage

Creates a KeyValueStore layer that uses the browser's localStorage api. Values are stored between sessions.

To import and use `layerLocalStorage` from the "BrowserKeyValueStore" module:

ts
import \* as BrowserKeyValueStore from "@effect/platform-browser/BrowserKeyValueStore"
// Can be accessed like this
BrowserKeyValueStore.layerLocalStorage
undefined

**Signature**

```ts
export declare const layerLocalStorage: Layer.Layer<KeyValueStore.KeyValueStore, never, never>
```
