# locally

Provides each data source with a fiber ref value.

Part of the `RequestBlock` module, imported from `@effect/io/RequestBlock`.

**Signature**

```ts
export declare const locally: <R, A>(self: RequestBlock<R>, ref: FiberRef<A>, value: A) => RequestBlock<R>
```
