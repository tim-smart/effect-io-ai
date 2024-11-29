# get

Retrieves the current version of the reloadable service.

To import and use `get` from the "Reloadable" module:

ts
import \* as Reloadable from "effect/Reloadable"
// Can be accessed like this
Reloadable.get
undefined

**Signature**

```ts
export declare const get: <T extends Context.Tag<any, any>>(
  tag: T
) => Effect.Effect<Context.Tag.Service<T>, never, Reloadable<Context.Tag.Identifier<T>>>
```
