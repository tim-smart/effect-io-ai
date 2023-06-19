# collectAll

Collects all fibers into a single fiber producing an in-order list of the
results.

Part of the `Fiber` module, imported from `@effect/io/Fiber`.

**Signature**

```ts
export declare const collectAll: <E, A>(fibers: Iterable<Fiber<E, A>>) => Fiber<E, A[]>
```
