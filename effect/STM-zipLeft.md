## zipLeft

Sequentially zips this value with the specified one, discarding the second
element of the tuple.

**Signature**

```ts
declare const zipLeft: { <A1, E1, R1>(that: STM<A1, E1, R1>): <A, E, R>(self: STM<A, E, R>) => STM<A, E1 | E, R1 | R>; <A, E, R, A1, E1, R1>(self: STM<A, E, R>, that: STM<A1, E1, R1>): STM<A, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1934)

Since v2.0.0