# getEquivalence

Given a tuple of `Equivalence`s returns a new `Equivalence` that compares values of a tuple
by applying each `Equivalence` to the corresponding element of the tuple.

To import and use `getEquivalence` from the "Tuple" module:

ts
import \* as Tuple from "effect/Tuple"
// Can be accessed like this
Tuple.getEquivalence
undefined

**Signature**

```ts
export declare const getEquivalence: <T extends ReadonlyArray<Equivalence.Equivalence<any>>>(
  ...isEquivalents: T
) => Equivalence.Equivalence<
  Readonly<{ [I in keyof T]: [T[I]] extends [Equivalence.Equivalence<infer A>] ? A : never }>
>
```
