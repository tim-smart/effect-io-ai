## struct

Given a struct of `Equivalence`s returns a new `Equivalence` that compares values of a struct
by applying each `Equivalence` to the corresponding property of the struct.

**Signature**

```ts
declare const struct: <R extends Record<string, Equivalence<any>>>(fields: R) => Equivalence<{ readonly [K in keyof R]: [R[K]] extends [Equivalence<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Equivalence.ts#L223)

Since v2.0.0