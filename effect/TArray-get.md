Package: `effect`<br />
Module: `TArray`<br />

## TArray.get

Extracts value from ref in array.

**Signature**

```ts
declare const get: { (index: number): <A>(self: TArray<A>) => STM.STM<A>; <A>(self: TArray<A>, index: number): STM.STM<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L314)

Since v2.0.0