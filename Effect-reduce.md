# reduce

Folds an `Iterable<A>` using an effectual function f, working sequentially
from left to right.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.reduce`.

### Signature

```typescript
export declare const reduce: {
  <Z, A, R, E>(zero: Z, f: (z: Z, a: A) => Effect<R, E, Z>): (elements: Iterable<A>) => Effect<R, E, Z>
  <Z, A, R, E>(elements: Iterable<A>, zero: Z, f: (z: Z, a: A) => Effect<R, E, Z>): Effect<R, E, Z>
}
```
