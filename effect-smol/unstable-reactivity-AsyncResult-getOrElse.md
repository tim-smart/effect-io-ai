Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.getOrElse

Returns the available value from `value`, or evaluates the fallback when no current or previous success exists.

**Signature**

```ts
declare const getOrElse: { <B>(orElse: LazyArg<B>): <A, E>(self: AsyncResult<A, E>) => A | B; <A, E, B>(self: AsyncResult<A, E>, orElse: LazyArg<B>): A | B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L461)

Since v4.0.0