# reverse

Reverse an `Iterable`, creating a new `Array`.

To import and use `reverse` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.reverse
```

**Signature**

```ts
export declare const reverse: <S extends readonly [any, ...any[]] | Iterable<any>>(
  self: S
) => S extends readonly [infer A, ...(infer A)[]] ? [A, ...A[]] : S extends Iterable<infer A> ? A[] : never
```
