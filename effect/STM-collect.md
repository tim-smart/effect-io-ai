## collect

Simultaneously filters and maps the value produced by this effect.

**Signature**

```ts
declare const collect: { <A, A2>(pf: (a: A) => Option.Option<A2>): <E, R>(self: STM<A, E, R>) => STM<A2, E, R>; <A, E, R, A2>(self: STM<A, E, R>, pf: (a: A) => Option.Option<A2>): STM<A2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L402)

Since v2.0.0