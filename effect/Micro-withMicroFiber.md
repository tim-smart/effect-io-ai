# withMicroFiber

Create a `Micro` effect using the current `MicroFiber`.

To import and use `withMicroFiber` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.withMicroFiber
undefined

**Signature**

```ts
export declare const withMicroFiber: <A, E = never, R = never>(
  evaluate: (fiber: MicroFiberImpl<A, E>) => Micro<A, E, R>
) => Micro<A, E, R>
```
