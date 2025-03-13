Package: `effect`<br />
Module: `Micro`<br />

## Micro.failSync

Creates a `Micro` effect that will fail with the lazily evaluated error.

This results in a `Fail` variant of the `MicroCause` type, where the error is
tracked at the type level.

**Signature**

```ts
declare const failSync: <E>(error: LazyArg<E>) => Micro<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L982)

Since v3.4.6