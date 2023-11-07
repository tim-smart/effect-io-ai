# scan

Reduce an `Iterable` from the left, keeping all intermediate results instead of only the final result.

To import and use `scan` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.scan
```

**Signature**

```ts
export declare const scan: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => [B, ...B[]]
  <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): [B, ...B[]]
}
```
