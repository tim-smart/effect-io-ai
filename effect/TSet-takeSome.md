Package: `effect`<br />
Module: `TSet`<br />

## TSet.takeSome

Takes all matching values, or retries until there is at least one.

**Signature**

```ts
declare const takeSome: { <A, B>(pf: (a: A) => Option.Option<B>): (self: TSet<A>) => STM.STM<[B, ...Array<B>]>; <A, B>(self: TSet<A>, pf: (a: A) => Option.Option<B>): STM.STM<[B, ...Array<B>]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L285)

Since v2.0.0