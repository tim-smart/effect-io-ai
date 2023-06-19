# struct

Given a struct of `Equivalence`s returns a new `Equivalence` that compares values of a struct
by applying each `Equivalence` to the corresponding property of the struct.

Part of the `Equivalence` module, imported from `@effect/data/typeclass/Equivalence`.

**Signature**

```ts
export declare const struct: <R extends Record<string, Equivalence<any>>>(
  predicates: R
) => Equivalence<{ readonly [K in keyof R]: [R[K]] extends [Equivalence<infer A>] ? A : never }>
```
