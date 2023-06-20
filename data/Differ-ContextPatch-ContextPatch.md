# ContextPatch

A `Patch<Input, Output>` describes an update that transforms a `Env<Input>`
to a `Env<Output>` as a data structure. This allows combining updates to
different services in the environment in a compositional way.

To import and use `ContextPatch` from the "ContextPatch" module:

```ts
import * as ContextPatch from '@effect/data/Differ/ContextPatch'

// Can be accessed like this
ContextPatch.ContextPatch
```
