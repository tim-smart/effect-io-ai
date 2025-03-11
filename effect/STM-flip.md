## flip

Flips the success and failure channels of this transactional effect. This
allows you to use all methods on the error channel, possibly before
flipping back.

**Signature**

```ts
declare const flip: <A, E, R>(self: STM<A, E, R>) => STM<E, A, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L716)

Since v2.0.0