## map

Maps the value produced by the effect.

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): <E, R>(self: STM<A, E, R>) => STM<B, E, R>; <A, E, R, B>(self: STM<A, E, R>, f: (a: A) => B): STM<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1236)

Since v2.0.0