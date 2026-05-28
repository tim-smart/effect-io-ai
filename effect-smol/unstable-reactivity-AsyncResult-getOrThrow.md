Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.getOrThrow

Returns the available value from `value`, or throws `NoSuchElementError` when no current or previous success exists.

**Signature**

```ts
declare const getOrThrow: <A, E>(self: AsyncResult<A, E>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L473)

Since v4.0.0