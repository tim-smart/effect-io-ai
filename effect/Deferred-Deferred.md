# Deferred

A `Deferred` represents an asynchronous variable that can be set exactly
once, with the ability for an arbitrary number of fibers to suspend (by
calling `Deferred.await`) and automatically resume when the variable is set.

`Deferred` can be used for building primitive actions whose completions
require the coordinated action of multiple fibers, and for building
higher-level concurrent or asynchronous structures.

To import and use `Deferred` from the "Deferred" module:

```ts
import * as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.Deferred
```
