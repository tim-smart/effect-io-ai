Package: `effect`<br />
Module: `TSet`<br />

## TSet.transformSTM

Atomically updates all elements using a transactional function.

**Signature**

```ts
declare const transformSTM: { <A, R, E>(f: (a: A) => STM.STM<A, E, R>): (self: TSet<A>) => STM.STM<void, E, R>; <A, R, E>(self: TSet<A>, f: (a: A) => STM.STM<A, E, R>): STM.STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L350)

Since v2.0.0