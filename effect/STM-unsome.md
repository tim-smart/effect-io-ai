## unsome

Converts an option on errors into an option on values.

**Signature**

```ts
declare const unsome: <A, E, R>(self: STM<A, Option.Option<E>, R>) => STM<Option.Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1854)

Since v2.0.0