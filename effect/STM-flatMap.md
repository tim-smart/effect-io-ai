Package: `effect`<br />
Module: `STM`<br />

## STM.flatMap

Feeds the value produced by this effect to the specified function, and then
runs the returned effect as well to produce its results.

**Signature**

```ts
declare const flatMap: { <A, A2, E1, R1>(f: (a: A) => STM<A2, E1, R1>): <E, R>(self: STM<A, E, R>) => STM<A2, E1 | E, R1 | R>; <A, E, R, A2, E1, R1>(self: STM<A, E, R>, f: (a: A) => STM<A2, E1, R1>): STM<A2, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L695)

Since v2.0.0