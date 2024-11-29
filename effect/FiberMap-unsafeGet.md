# unsafeGet

Retrieve a fiber from the FiberMap.

To import and use `unsafeGet` from the "FiberMap" module:

ts
import \* as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.unsafeGet
undefined

**Signature**

```ts
export declare const unsafeGet: {
  <K>(key: K): <A, E>(self: FiberMap<K, A, E>) => Option.Option<Fiber.RuntimeFiber<A, E>>
  <K, A, E>(self: FiberMap<K, A, E>, key: K): Option.Option<Fiber.RuntimeFiber<A, E>>
}
```
