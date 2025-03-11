## transform

Atomically updates all elements using a pure function.

**Signature**

```ts
declare const transform: { <A>(f: (value: A) => A): (self: TArray<A>) => STM.STM<void>; <A>(self: TArray<A>, f: (value: A) => A): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L459)

Since v2.0.0