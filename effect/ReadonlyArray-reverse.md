# reverse

Reverse an `Iterable`, creating a new `Array`.

To import and use `reverse` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.reverse
```

**Signature**

```ts
export declare const reverse: <S extends Iterable<any> | readonly [any, ...any[]]>(
  self: S
) => S extends readonly [infer A, ...(infer A)[]] ? [A, ...A[]] : S extends Iterable<infer A> ? A[] : never
```
