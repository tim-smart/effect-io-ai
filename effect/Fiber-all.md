# all

Collects all fibers into a single fiber producing an in-order list of the
results.

To import and use `all` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.all
```

**Signature**

```ts
export declare const all: <A, E>(fibers: Iterable<Fiber<A, E>>) => Fiber<readonly A[], E>
```
