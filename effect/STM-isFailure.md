Package: `effect`<br />
Module: `STM`<br />

## STM.isFailure

Returns whether this transactional effect is a failure.

**Signature**

```ts
declare const isFailure: <A, E, R>(self: STM<A, E, R>) => STM<boolean, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1155)

Since v2.0.0