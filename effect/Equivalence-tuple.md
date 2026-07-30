Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.tuple

Similar to `Promise.all` but operates on `Equivalence`s.

```ts
[Equivalence<A>, Equivalence<B>, ...] -> Equivalence<[A, B, ...]>
```

Given a tuple of `Equivalence`s returns a new `Equivalence` that compares values of a tuple
by applying each `Equivalence` to the corresponding element of the tuple.

**Signature**

```ts
declare const tuple: <T extends ReadonlyArray<Equivalence<any>>>(...elements: T) => Equivalence<Readonly<{ [I in keyof T]: [T[I]] extends [Equivalence<infer A>] ? A : never; }>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Equivalence.ts#L190)

Since v2.0.0