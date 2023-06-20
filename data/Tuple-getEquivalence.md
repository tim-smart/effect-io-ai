# getEquivalence

Given a tuple of `Equivalence`s returns a new `Equivalence` that compares values of a tuple
by applying each `Equivalence` to the corresponding element of the tuple.

To import and use `getEquivalence` from the "Tuple" module:

```ts
import * as Tuple from '@effect/data/Tuple'

// Can be accessed like this
Tuple.getEquivalence
```

**Signature**

```ts
export declare const getEquivalence: <T extends readonly equivalence.Equivalence<any>[]>(
  ...predicates: T
) => equivalence.Equivalence<
  Readonly<{ [I in keyof T]: [T[I]] extends [equivalence.Equivalence<infer A>] ? A : never }>
>
```
