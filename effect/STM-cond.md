## cond

Similar to Either.cond, evaluate the predicate, return the given A as
success if predicate returns true, and the given E as error otherwise

**Signature**

```ts
declare const cond: <A, E>(predicate: LazyArg<boolean>, error: LazyArg<E>, result: LazyArg<A>) => STM<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L442)

Since v2.0.0