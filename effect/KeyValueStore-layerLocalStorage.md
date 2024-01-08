# layerLocalStorage

Creates a KeyValueStore layer that uses the browser's localStorage api. Values are stored between sessions.

To import and use `layerLocalStorage` from the "KeyValueStore" module:

```ts
import * as KeyValueStore from "@effect/platform-browser/KeyValueStore"
// Can be accessed like this
KeyValueStore.layerLocalStorage
```

**Signature**

```ts
export declare const layerLocalStorage: Layer<never, never, KeyValueStore>
```
