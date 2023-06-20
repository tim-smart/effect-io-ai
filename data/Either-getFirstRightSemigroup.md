# getFirstRightSemigroup

Semigroup returning the left-most `Right` value.

```
| self       | that       | combine(self, that) |
| ---------- | ---------- | ------------------- |
| left(e1)   | left(e2)   | left(e2)            |
| left(e1)   | right(a2)  | right(a2)           |
| right(a1)  | left(e2)   | right(a1)           |
| right(a1)  | right(a2)  | right(a1)           |
```

To import and use `getFirstRightSemigroup` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.getFirstRightSemigroup
```

**Signature**

```ts
export declare const getFirstRightSemigroup: <E, A>() => Semigroup<Either<E, A>>
```
