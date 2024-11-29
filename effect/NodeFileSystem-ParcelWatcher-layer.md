# layer

You can provide this Layer to use `@parcel/watcher` as the backend for watching files.

To import and use `layer` from the "ParcelWatcher" module:

ts
import \* as ParcelWatcher from "@effect/platform-node-shared/NodeFileSystem/ParcelWatcher"
// Can be accessed like this
ParcelWatcher.layer
undefined

**Signature**

```ts
export declare const layer: Layer<WatchBackend, never, never>
```
