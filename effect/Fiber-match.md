# match

Folds over the `Fiber` or `RuntimeFiber`.

To import and use `match` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.match
```

**Signature**

```ts
export declare const match: {
  <A, E, Z>(options: {
    readonly onFiber: (fiber: Fiber<A, E>) => Z
    readonly onRuntimeFiber: (fiber: RuntimeFiber<A, E>) => Z
  }): (self: Fiber<A, E>) => Z
  <A, E, Z>(
    self: Fiber<A, E>,
    options: { readonly onFiber: (fiber: Fiber<A, E>) => Z; readonly onRuntimeFiber: (fiber: RuntimeFiber<A, E>) => Z }
  ): Z
}
```
