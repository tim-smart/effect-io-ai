Package: `effect`<br />
Module: `Cause`<br />

## Cause.as

Replaces any errors in a `Cause` with a provided constant error.

**Details**

This function transforms all `Fail` errors into the specified error value,
preserving the structure of the `Cause`. It's useful when you no longer need
the original error details but still want to keep the cause shape.

**See**

- `map` Apply a custom transformation to `Fail` errors

**Signature**

```ts
declare const as: { <E2>(error: E2): <E>(self: Cause<E>) => Cause<E2>; <E, E2>(self: Cause<E>, error: E2): Cause<E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L998)

Since v2.0.0