Package: `effect`<br />
Module: `Cause`<br />

## Cause.fail

Creates a `Fail` cause from an expected error.

**Details**

This function constructs a `Cause` carrying an error of type `E`. It's used
when you want to represent a known or anticipated failure in your effectful
computations.

**See**

- `isFailure` Check if a `Cause` contains a failure

**Signature**

```ts
declare const fail: <E>(error: E) => Cause<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L591)

Since v2.0.0