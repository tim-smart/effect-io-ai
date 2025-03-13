Package: `effect`<br />
Module: `Micro`<br />

## Micro.fail

Creates a `Micro` effect that fails with the given error.

This results in a `Fail` variant of the `MicroCause` type, where the error is
tracked at the type level.

**Signature**

```ts
declare const fail: <E>(error: E) => Micro<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L865)

Since v3.4.0