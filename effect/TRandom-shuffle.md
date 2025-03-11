## shuffle

Uses the pseudo-random number generator to shuffle the specified iterable.

**Signature**

```ts
declare const shuffle: <A>(elements: Iterable<A>) => STM.STM<Array<A>, never, TRandom>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TRandom.ts#L129)

Since v2.0.0