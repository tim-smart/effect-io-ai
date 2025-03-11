## add

Stores new element in the set.

**Signature**

```ts
declare const add: { <A>(value: A): (self: TSet<A>) => STM.STM<void>; <A>(self: TSet<A>, value: A): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L62)

Since v2.0.0