# withFiber

Create a `Micro` effect using the current `Fiber`.

To import and use `withFiber` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.withFiber
undefined

**Signature**

```ts
export declare const withFiber: <A, E = never, R = never>(
  evaluate: (fiber: FiberImpl<A, E>) => Micro<A, E, R>
) => Micro<A, E, R>
```
