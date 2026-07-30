Package: `effect`<br />
Module: `TSet`<br />

## TSet.difference

Atomically transforms the set into the difference of itself and the
provided set.

**Signature**

```ts
declare const difference: { <A>(other: TSet<A>): (self: TSet<A>) => STM.STM<void>; <A>(self: TSet<A>, other: TSet<A>): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L74)

Since v2.0.0