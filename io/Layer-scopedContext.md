# scopedContext

Constructs a layer from the specified scoped effect, which must return one
or more services.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const scopedContext: <R, E, A>(
  effect: Effect.Effect<R, E, Context.Context<A>>
) => Layer<Exclude<R, Scope.Scope>, E, A>
```
