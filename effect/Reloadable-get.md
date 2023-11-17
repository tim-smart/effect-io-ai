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
export declare const get: <T extends Context.Tag<any, any>>(
  tag: T
) => Effect.Effect<Reloadable<Context.Tag.Identifier<T>>, never, Context.Tag.Service<T>>
```
