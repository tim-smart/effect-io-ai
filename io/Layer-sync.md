# sync

Lazily constructs a layer from the specified value.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const sync: <T extends Context.Tag<any, any>>(
  tag: T,
  evaluate: LazyArg<Context.Tag.Service<T>>
) => Layer<never, never, Context.Tag.Identifier<T>>
```
