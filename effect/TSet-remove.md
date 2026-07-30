Package: `effect`<br />
Module: `TSet`<br />

## TSet.remove

Removes a single element from the set.

**Signature**

```ts
declare const remove: { <A>(value: A): (self: TSet<A>) => STM.STM<void>; <A>(self: TSet<A>, value: A): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L175)

Since v2.0.0