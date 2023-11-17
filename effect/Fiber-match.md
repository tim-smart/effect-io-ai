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
  <E, A, Z>(options: {
    readonly onFiber: (fiber: Fiber<E, A>) => Z
    readonly onRuntimeFiber: (fiber: RuntimeFiber<E, A>) => Z
  }): (self: Fiber<E, A>) => Z
  <E, A, Z>(
    self: Fiber<E, A>,
    options: { readonly onFiber: (fiber: Fiber<E, A>) => Z; readonly onRuntimeFiber: (fiber: RuntimeFiber<E, A>) => Z }
  ): Z
}
```
