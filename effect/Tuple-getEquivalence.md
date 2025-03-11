## getEquivalence

Given a tuple of `Equivalence`s returns a new `Equivalence` that compares values of a tuple
by applying each `Equivalence` to the corresponding element of the tuple.

**Signature**

```ts
declare const getEquivalence: <T extends ReadonlyArray<Equivalence.Equivalence<any>>>(...isEquivalents: T) => Equivalence.Equivalence<Readonly<{ [I in keyof T]: [T[I]] extends [Equivalence.Equivalence<infer A>] ? A : never; }>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L205)

Since v2.0.0