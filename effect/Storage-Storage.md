# Storage

The storage Service is responsible of persisting assignments and registered pods.
The storage is expected to be shared among all pods, so it works also as communication of assignments between Pods.

To import and use `Storage` from the "Storage" module:

```ts
import * as Storage from "@effect/cluster/Storage"
// Can be accessed like this
Storage.Storage
```
