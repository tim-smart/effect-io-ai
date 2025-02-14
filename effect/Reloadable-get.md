# get

Retrieves the current version of the reloadable service.

To import and use `get` from the "Reloadable" module:

```ts
import * as Reloadable from "effect/Reloadable"
// Can be accessed like this
Reloadable.get
```

**Signature**

```ts
export declare const get: <I, S>(tag: Context.Tag<I, S>) => Effect.Effect<S, never, Reloadable<I>>
```
