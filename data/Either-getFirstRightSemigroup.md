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

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const getFirstRightSemigroup: <E, A>() => Semigroup<Either<E, A>>
```
