# succeedContext

Constructs a layer from the specified value, which must return one or more
services.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const succeedContext: <A>(context: Context.Context<A>) => Layer<never, never, A>
```
