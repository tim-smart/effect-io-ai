# tuple

Similar to `Promise.all` but operates on `Either`s.

```
[Either<E1, A>, Either<E2, B>, ...] -> Either<E1 | E2 | ..., [A, B, ...]>
```

To import and use `tuple` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.tuple
```

**Signature**

```ts
export declare const tuple: <T extends readonly Either<any, any>[]>(
  ...elements: T
) => Either<
  [T[number]] extends [Either<infer E, any>] ? E : never,
  { [I in keyof T]: [T[I]] extends [Either<any, infer A>] ? A : never }
>
```
