# getFirstLeftSemigroup

`Semigroup` returning the left-most `Left` value. If both operands are `Right`s then the inner values
are combined using the provided `Semigroup`.

```
| self       | that       | combine(self, that)     |
| ---------- | ---------- | ----------------------- |
| left(e1)   | left(e2)   | left(e1)                |
| left(e1)   | right(a2)  | left(e1)                |
| right(a1)  | left(e2)   | left(e2)                |
| right(a1)  | right(a2)  | right(combine(a1, a2))  |
```

To import and use `getFirstLeftSemigroup` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.getFirstLeftSemigroup
```

**Signature**

```ts
export declare const getFirstLeftSemigroup: <A, E>(S: Semigroup<A>) => Semigroup<Either<E, A>>
```
