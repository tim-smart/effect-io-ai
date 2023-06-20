# tuple

Similar to `Promise.all` but operates on `Equivalence`s.

```
[Equivalence<A>, Equivalence<B>, ...] -> Equivalence<[A, B, ...]>
```

Given a tuple of `Equivalence`s returns a new `Equivalence` that compares values of a tuple
by applying each `Equivalence` to the corresponding element of the tuple.

To import and use `tuple` from the "Equivalence" module:

```ts
import * as Equivalence from '@effect/data/typeclass/Equivalence'

// Can be accessed like this
Equivalence.tuple
```

**Signature**

```ts
export declare const tuple: <T extends readonly Equivalence<any>[]>(
  ...predicates: T
) => Equivalence<Readonly<{ [I in keyof T]: [T[I]] extends [Equivalence<infer A>] ? A : never }>>
```
