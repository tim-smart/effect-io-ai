# isPool

Returns `true` if the specified value is a `Pool`, `false` otherwise.

To import and use `isPool` from the "Pool" module:

ts
import \* as Pool from "effect/Pool"
// Can be accessed like this
Pool.isPool
undefined

**Signature**

```ts
export declare const isPool: (u: unknown) => u is Pool<unknown, unknown>
```
