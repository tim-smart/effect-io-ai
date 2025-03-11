## asSomeError

Maps the error value of this effect to an optional value.

**Signature**

```ts
declare const asSomeError: <A, E, R>(self: STM<A, E, R>) => STM<A, Option.Option<E>, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L283)

Since v2.0.0