Package: `effect`<br />
Module: `TArray`<br />

## TArray.forEach

Atomically performs transactional effect for each item in array.

**Signature**

```ts
declare const forEach: { <A, R, E>(f: (value: A) => STM.STM<void, E, R>): (self: TArray<A>) => STM.STM<void, E, R>; <A, R, E>(self: TArray<A>, f: (value: A) => STM.STM<void, E, R>): STM.STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L295)

Since v2.0.0