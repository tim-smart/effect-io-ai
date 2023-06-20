# lift2

Lifts a binary function into `ReadonlyArray`.

To import and use `lift2` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.lift2
```

**Signature**

```ts
export declare const lift2: <A, B, C>(
  f: (a: A, b: B) => C
) => { (self: readonly A[], that: readonly B[]): C[]; (that: readonly B[]): (self: readonly A[]) => C[] }
```
