# make

Creates a new `ScopedRef` from the specified value. This method should
not be used for values whose creation require the acquisition of resources.

To import and use `make` from the "ScopedRef" module:

ts
import \* as ScopedRef from "effect/ScopedRef"
// Can be accessed like this
ScopedRef.make
undefined

**Signature**

```ts
export declare const make: <A>(evaluate: LazyArg<A>) => Effect.Effect<ScopedRef<A>, never, Scope.Scope>
```
