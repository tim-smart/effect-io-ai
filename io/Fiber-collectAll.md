# collectAll

Collects all fibers into a single fiber producing an in-order list of the
results.

To import and use `collectAll` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.collectAll
```

**Signature**

```ts
export declare const collectAll: <E, A>(fibers: Iterable<Fiber<E, A>>) => Fiber<E, A[]>
```
