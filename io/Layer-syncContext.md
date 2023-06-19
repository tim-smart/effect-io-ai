# syncContext

Lazily constructs a layer from the specified value, which must return one or more
services.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const syncContext: <A>(evaluate: LazyArg<Context.Context<A>>) => Layer<never, never, A>
```
