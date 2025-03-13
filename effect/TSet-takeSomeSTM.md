Package: `effect`<br />
Module: `TSet`<br />

## TSet.takeSomeSTM

Takes all matching values, or retries until there is at least one.

**Signature**

```ts
declare const takeSomeSTM: { <A, B, E, R>(pf: (a: A) => STM.STM<B, Option.Option<E>, R>): (self: TSet<A>) => STM.STM<[B, ...Array<B>], E, R>; <A, B, E, R>(self: TSet<A>, pf: (a: A) => STM.STM<B, Option.Option<E>, R>): STM.STM<[B, ...Array<B>], E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L296)

Since v2.0.0