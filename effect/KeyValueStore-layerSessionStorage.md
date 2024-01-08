# layerSessionStorage

Creates a KeyValueStore layer that uses the browser's sessionStorage api. Values are stored only for the current session.

To import and use `layerSessionStorage` from the "KeyValueStore" module:

```ts
import * as KeyValueStore from "@effect/platform-browser/KeyValueStore"
// Can be accessed like this
KeyValueStore.layerSessionStorage
```

**Signature**

```ts
export declare const layerSessionStorage: Layer<never, never, KeyValueStore>
```
