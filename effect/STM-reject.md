## reject

Fail with the returned value if the `PartialFunction` matches, otherwise
continue with our held value.

**Signature**

```ts
declare const reject: { <A, E2>(pf: (a: A) => Option.Option<E2>): <E, R>(self: STM<A, E, R>) => STM<A, E2 | E, R>; <A, E, R, E2>(self: STM<A, E, R>, pf: (a: A) => Option.Option<E2>): STM<A, E | E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1570)

Since v2.0.0