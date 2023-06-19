# tuple

Similar to `Promise.all` but operates on `Either`s.

```
[Either<E1, A>, Either<E2, B>, ...] -> Either<E1 | E2 | ..., [A, B, ...]>
```

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const tuple: <T extends readonly Either<any, any>[]>(
  ...elements: T
) => Either<
  [T[number]] extends [Either<infer E, any>] ? E : never,
  { [I in keyof T]: [T[I]] extends [Either<any, infer A>] ? A : never }
>
```
