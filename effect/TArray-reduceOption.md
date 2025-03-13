Package: `effect`<br />
Module: `TArray`<br />

## TArray.reduceOption

Atomically reduce the array, if non-empty, by a binary operator.

**Signature**

```ts
declare const reduceOption: { <A>(f: (x: A, y: A) => A): (self: TArray<A>) => STM.STM<Option.Option<A>>; <A>(self: TArray<A>, f: (x: A, y: A) => A): STM.STM<Option.Option<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L384)

Since v2.0.0