# make

Creates a new `ScopedRef` from the specified value. This method should
not be used for values whose creation require the acquisition of resources.

To import and use `make` from the "ScopedRef" module:

```ts
import * as ScopedRef from '@effect/io/ScopedRef'

// Can be accessed like this
ScopedRef.make
```

**Signature**

```ts
export declare const make: <A>(evaluate: LazyArg<A>) => Effect.Effect<Scope.Scope, never, ScopedRef<A>>
```
