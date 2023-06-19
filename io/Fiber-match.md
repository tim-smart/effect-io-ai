# match

Folds over the `Fiber` or `RuntimeFiber`.

Part of the `Fiber` module, imported from `@effect/io/Fiber`.

**Signature**

```ts
export declare const match: {
  <E, A, Z>(onFiber: (fiber: Fiber<E, A>) => Z, onRuntimeFiber: (fiber: RuntimeFiber<E, A>) => Z): (
    self: Fiber<E, A>
  ) => Z
  <E, A, Z>(self: Fiber<E, A>, onFiber: (fiber: Fiber<E, A>) => Z, onRuntimeFiber: (fiber: RuntimeFiber<E, A>) => Z): Z
}
```
