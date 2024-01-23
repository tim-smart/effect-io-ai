# unsafeGet

Retrieve a fiber from the FiberMap.

To import and use `unsafeGet` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.unsafeGet
```

**Signature**

```ts
export declare const unsafeGet: {
  <K>(key: K): <E, A>(self: FiberMap.FiberMap<K, E, A>) => Option.Option<Fiber.RuntimeFiber<E, A>>
  <K, E, A>(self: FiberMap.FiberMap<K, E, A>, key: K): Option.Option<Fiber.RuntimeFiber<E, A>>
}
```
