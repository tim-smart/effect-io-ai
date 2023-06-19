# make

Creates a new `ScopedRef` from the specified value. This method should
not be used for values whose creation require the acquisition of resources.

Part of the `ScopedRef` module, imported from `@effect/io/ScopedRef`.

**Signature**

```ts
export declare const make: <A>(evaluate: LazyArg<A>) => Effect.Effect<Scope.Scope, never, ScopedRef<A>>
```
