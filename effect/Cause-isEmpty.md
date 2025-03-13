Package: `effect`<br />
Module: `Cause`<br />

## Cause.isEmpty

Checks if a `Cause` is entirely empty.

**Details**

This function returns `true` if the `Cause` contains no errors, defects, or
interruptions. It's helpful for verifying if a computation truly had no
failures.

**Signature**

```ts
declare const isEmpty: <E>(self: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L749)

Since v2.0.0