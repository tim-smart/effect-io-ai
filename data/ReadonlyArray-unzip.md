# unzip

This function is the inverse of `zip`. Takes an `Iterable` of pairs and return two corresponding `Array`s.

To import and use `unzip` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.unzip
```

**Signature**

```ts
export declare const unzip: <A, B>(self: Iterable<[A, B]>) => [A[], B[]]
```
