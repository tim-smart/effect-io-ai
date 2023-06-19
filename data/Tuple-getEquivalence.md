# getEquivalence

Given a tuple of `Equivalence`s returns a new `Equivalence` that compares values of a tuple
by applying each `Equivalence` to the corresponding element of the tuple.

Part of the `Tuple` module, imported from `@effect/data/Tuple`.

**Signature**

```ts
export declare const getEquivalence: <T extends readonly equivalence.Equivalence<any>[]>(
  ...predicates: T
) => equivalence.Equivalence<
  Readonly<{ [I in keyof T]: [T[I]] extends [equivalence.Equivalence<infer A>] ? A : never }>
>
```
