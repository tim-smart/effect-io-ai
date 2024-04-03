# scan

Reduce an `Iterable` from the left, keeping all intermediate results instead of only the final result.

To import and use `scan` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.scan
```

**Signature**

```ts
export declare const scan: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => Iterable<B>
  <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): Iterable<B>
}
```
