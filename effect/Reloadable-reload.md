# reload

Reloads the specified service.

To import and use `reload` from the "Reloadable" module:

```ts
import * as Reloadable from "effect/Reloadable"
// Can be accessed like this
Reloadable.reload
```

**Signature**

```ts
export declare const reload: <I, S>(tag: Context.Tag<I, S>) => Effect.Effect<void, unknown, Reloadable<I>>
```
