## asVoid

This function maps the success value of an `STM` to `void`. If the original
`STM` succeeds, the returned `STM` will also succeed. If the original `STM`
fails, the returned `STM` will fail with the same error.

**Signature**

```ts
declare const asVoid: <A, E, R>(self: STM<A, E, R>) => STM<void, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L293)

Since v2.0.0