# match

Folds over the `Fiber` or `RuntimeFiber`.

To import and use `match` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.match
```

**Signature**

```ts
export declare const match: {
  <E, A, Z>(onFiber: (fiber: Fiber<E, A>) => Z, onRuntimeFiber: (fiber: RuntimeFiber<E, A>) => Z): (
    self: Fiber<E, A>
  ) => Z
  <E, A, Z>(self: Fiber<E, A>, onFiber: (fiber: Fiber<E, A>) => Z, onRuntimeFiber: (fiber: RuntimeFiber<E, A>) => Z): Z
}
```
