Package: `effect`<br />
Module: `TSet`<br />

## TSet.has

Tests whether or not set contains an element.

**Signature**

```ts
declare const has: { <A>(value: A): (self: TSet<A>) => STM.STM<boolean>; <A>(self: TSet<A>, value: A): STM.STM<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L112)

Since v2.0.0