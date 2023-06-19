# tuple

Similar to `Promise.all` but operates on `Predicate`s.

```
[Predicate<A>, Predicate<B>, ...] -> Predicate<[A, B, ...]>
```

Part of the `Predicate` module, imported from `@effect/data/Predicate`.

**Signature**

```ts
export declare const tuple: <T extends readonly Predicate<any>[]>(
  ...predicates: T
) => Predicate<Readonly<{ [I in keyof T]: [T[I]] extends [Predicate<infer A>] ? A : never }>>
```
