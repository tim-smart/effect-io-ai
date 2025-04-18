Package: `effect`<br />
Module: `TArray`<br />

## TArray.reduceOptionSTM

Atomically reduce the non-empty array using a transactional binary
operator.

**Signature**

```ts
declare const reduceOptionSTM: { <A, R, E>(f: (x: A, y: A) => STM.STM<A, E, R>): (self: TArray<A>) => STM.STM<Option.Option<A>, E, R>; <A, R, E>(self: TArray<A>, f: (x: A, y: A) => STM.STM<A, E, R>): STM.STM<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L396)

Since v2.0.0