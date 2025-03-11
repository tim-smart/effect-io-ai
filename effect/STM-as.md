## as

Maps the success value of this effect to the specified constant value.

**Signature**

```ts
declare const as: { <A2>(value: A2): <A, E, R>(self: STM<A, E, R>) => STM<A2, E, R>; <A, E, R, A2>(self: STM<A, E, R>, value: A2): STM<A2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L264)

Since v2.0.0