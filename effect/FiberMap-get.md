# get

Retrieve a fiber from the FiberMap.

To import and use `get` from the "FiberMap" module:

```ts
import * as FiberMap from "effect/FiberMap"
// Can be accessed like this
FiberMap.get
```

**Signature**

```ts
export declare const get: {
  <K>(
    key: K
  ): <E, A>(self: FiberMap.FiberMap<K, E, A>) => Effect.Effect<never, NoSuchElementException, Fiber.RuntimeFiber<E, A>>
  <K, E, A>(
    self: FiberMap.FiberMap<K, E, A>,
    key: K
  ): Effect.Effect<never, NoSuchElementException, Fiber.RuntimeFiber<E, A>>
}
```
