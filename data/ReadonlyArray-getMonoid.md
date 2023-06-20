# getMonoid

Returns a `Monoid` for `ReadonlyArray<A>`.

To import and use `getMonoid` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.getMonoid
```

**Signature**

```ts
export declare const getMonoid: <A>() => Monoid<readonly A[]>
```
