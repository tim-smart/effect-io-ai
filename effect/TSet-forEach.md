Package: `effect`<br />
Module: `TSet`<br />

## TSet.forEach

Atomically performs transactional-effect for each element in set.

**Signature**

```ts
declare const forEach: { <A, R, E>(f: (value: A) => STM.STM<void, E, R>): (self: TSet<A>) => STM.STM<void, E, R>; <A, R, E>(self: TSet<A>, f: (value: A) => STM.STM<void, E, R>): STM.STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L93)

Since v2.0.0