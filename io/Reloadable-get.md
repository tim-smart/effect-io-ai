# get

Retrieves the current version of the reloadable service.

Part of the `Reloadable` module, imported from `@effect/io/Reloadable`.

**Signature**

```ts
export declare const get: <T extends Context.Tag<any, any>>(
  tag: T
) => Effect.Effect<Reloadable<Context.Tag.Identifier<T>>, never, Context.Tag.Service<T>>
```
