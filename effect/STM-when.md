## when

The moral equivalent of `if (p) exp`.

**Signature**

```ts
declare const when: { (predicate: LazyArg<boolean>): <A, E, R>(self: STM<A, E, R>) => STM<Option.Option<A>, E, R>; <A, E, R>(self: STM<A, E, R>, predicate: LazyArg<boolean>): STM<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1900)

Since v2.0.0