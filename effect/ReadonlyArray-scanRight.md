# scanRight

Reduce an `Iterable` from the right, keeping all intermediate results instead of only the final result.

To import and use `scanRight` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.scanRight
```

**Signature**

```ts
export declare const scanRight: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => [B, ...B[]]
  <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): [B, ...B[]]
}
```
