# reload

Reloads the specified service.

To import and use `reload` from the "Reloadable" module:

ts
import \* as Reloadable from "effect/Reloadable"
// Can be accessed like this
Reloadable.reload
undefined

**Signature**

```ts
export declare const reload: <T extends Context.Tag<any, any>>(
  tag: T
) => Effect.Effect<void, unknown, Reloadable<Context.Tag.Identifier<T>>>
```
