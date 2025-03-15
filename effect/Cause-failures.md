Package: `effect`<br />
Module: `Cause`<br />

## Cause.failures

Extracts all recoverable errors of type `E` from a `Cause`.

**Details**

This function returns a chunk of errors, providing a list of all `Fail`
values found in the cause. It's useful for collecting all known failures for
logging or combined error handling.

**Signature**

```ts
declare const failures: <E>(self: Cause<E>) => Chunk.Chunk<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L818)

Since v2.0.0