## update

Updates element in the array with given function.

**Signature**

```ts
declare const update: { <A>(index: number, f: (value: A) => A): (self: TArray<A>) => STM.STM<void>; <A>(self: TArray<A>, index: number, f: (value: A) => A): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L481)

Since v2.0.0