# scanRight

Reduce an `Iterable` from the right, keeping all intermediate results instead of only the final result.

To import and use `scanRight` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.scanRight
```

**Signature**

```ts
export declare const scanRight: {
  <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<A>) => [B, ...B[]]
  <A, B>(self: Iterable<A>, b: B, f: (b: B, a: A) => B): [B, ...B[]]
}
```
