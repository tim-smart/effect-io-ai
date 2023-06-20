# intercalate

Fold an `Iterable`, accumulating values in some `Monoid`, combining adjacent elements
using the specified separator.

To import and use `intercalate` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.intercalate
```

**Signature**

```ts
export declare const intercalate: <A>(M: Monoid<A>) => {
  (middle: A): (self: Iterable<A>) => A
  (self: Iterable<A>, middle: A): A
}
```
