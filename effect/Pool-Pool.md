# Pool

A `Pool<A, E>` is a pool of items of type `A`, each of which may be
associated with the acquisition and release of resources. An attempt to get
an item `A` from a pool may fail with an error of type `E`.

To import and use `Pool` from the "Pool" module:

```ts
import * as Pool from "effect/Pool"
// Can be accessed like this
Pool.Pool
```
