## orElseOptional

Returns an effect that will produce the value of this effect, unless it
fails with the `None` value, in which case it will produce the value of the
specified effect.

**Signature**

```ts
declare const orElseOptional: { <A2, E2, R2>(that: LazyArg<STM<A2, Option.Option<E2>, R2>>): <A, E, R>(self: STM<A, Option.Option<E>, R>) => STM<A2 | A, Option.Option<E2 | E>, R2 | R>; <A, E, R, A2, E2, R2>(self: STM<A, Option.Option<E>, R>, that: LazyArg<STM<A2, Option.Option<E2>, R2>>): STM<A | A2, Option.Option<E | E2>, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1392)

Since v2.0.0