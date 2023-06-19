# reload

Reloads the specified service.

Part of the `Reloadable` module, imported from `@effect/io/Reloadable`.

**Signature**

```ts
export declare const reload: <T extends Context.Tag<any, any>>(
  tag: T
) => Effect.Effect<Reloadable<Context.Tag.Identifier<T>>, unknown, void>
```
