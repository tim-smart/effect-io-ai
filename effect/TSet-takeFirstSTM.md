## takeFirstSTM

Takes the first matching value, or retries until there is one.

**Signature**

```ts
declare const takeFirstSTM: { <A, B, E, R>(pf: (a: A) => STM.STM<B, Option.Option<E>, R>): (self: TSet<A>) => STM.STM<B, E, R>; <A, B, E, R>(self: TSet<A>, pf: (a: A) => STM.STM<B, Option.Option<E>, R>): STM.STM<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L274)

Since v2.0.0