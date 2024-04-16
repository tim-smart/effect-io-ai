# scan

Reduce an `Iterable` from the left, keeping all intermediate results instead of only the final result.

To import and use `scan` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.scan
```

**Signature**

```ts
export declare const scan: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => [B, ...B[]]
  <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): [B, ...B[]]
}
```
