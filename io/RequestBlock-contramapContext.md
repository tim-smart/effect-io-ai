# contramapContext

Provides each data source with part of its required environment.

Part of the `RequestBlock` module, imported from `@effect/io/RequestBlock`.

**Signature**

```ts
export declare const contramapContext: <R0, R>(
  self: RequestBlock<R>,
  f: (context: Context.Context<R0>) => Context.Context<R>
) => RequestBlock<R0>
```
