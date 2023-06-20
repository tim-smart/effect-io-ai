# of

Constructs a new `NonEmptyArray<A>` from the specified value.

To import and use `of` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.of
```

**Signature**

```ts
export declare const of: <A>(a: A) => [A, ...A[]]
```
