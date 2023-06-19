# provideContext

Provides the sink with its required context, which eliminates its
dependency on `R`.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const provideContext: {
  <R>(context: Context.Context<R>): <E, In, L, Z>(self: Sink<R, E, In, L, Z>) => Sink<never, E, In, L, Z>
  <E, In, L, Z, R>(self: Sink<R, E, In, L, Z>, context: Context.Context<R>): Sink<never, E, In, L, Z>
}
```
