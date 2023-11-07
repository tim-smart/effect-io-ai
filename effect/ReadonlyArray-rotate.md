# rotate

Rotate an `Iterable` by `n` steps.

To import and use `rotate` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.rotate
```

**Signature**

```ts
export declare const rotate: { (n: number): <A>(self: Iterable<A>) => A[]; <A>(self: Iterable<A>, n: number): A[] }
```
