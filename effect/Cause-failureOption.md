Package: `effect`<br />
Module: `Cause`<br />

## Cause.failureOption

Retrieves the first `Fail` error in a `Cause`, if present.

**Details**

This function returns an `Option` containing the first recoverable error
(`E`) from the cause. It's often used to quickly check if there's a primary
error to handle or display.

**Signature**

```ts
declare const failureOption: <E>(self: Cause<E>) => Option.Option<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L859)

Since v2.0.0