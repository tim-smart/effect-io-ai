Package: `effect`<br />
Module: `STM`<br />

## STM.isSuccess

Returns whether this transactional effect is a success.

**Signature**

```ts
declare const isSuccess: <A, E, R>(self: STM<A, E, R>) => STM<boolean, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1163)

Since v2.0.0