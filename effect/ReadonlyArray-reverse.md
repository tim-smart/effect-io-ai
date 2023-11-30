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
export declare const reverse: { <A>(self: readonly [A, ...A[]]): [A, ...A[]]; <A>(self: Iterable<A>): A[] }
```
