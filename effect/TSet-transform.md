Package: `effect`<br />
Module: `TSet`<br />

## TSet.transform

Atomically updates all elements using a pure function.

**Signature**

```ts
declare const transform: { <A>(f: (a: A) => A): (self: TSet<A>) => STM.STM<void>; <A>(self: TSet<A>, f: (a: A) => A): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L339)

Since v2.0.0