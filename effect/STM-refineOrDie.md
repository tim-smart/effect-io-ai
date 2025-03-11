## refineOrDie

Keeps some of the errors, and terminates the fiber with the rest.

**Signature**

```ts
declare const refineOrDie: { <E, E2>(pf: (error: E) => Option.Option<E2>): <A, R>(self: STM<A, E, R>) => STM<A, E2, R>; <A, E, R, E2>(self: STM<A, E, R>, pf: (error: E) => Option.Option<E2>): STM<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1546)

Since v2.0.0