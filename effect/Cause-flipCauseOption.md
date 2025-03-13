Package: `effect`<br />
Module: `Cause`<br />

## Cause.flipCauseOption

Strips out failures with an error of `None` from a `Cause<Option<E>>`.

**Details**

This function turns a `Cause<Option<E>>` into an `Option<Cause<E>>`. If the
cause only contains failures of `None`, it becomes `None`; otherwise, it
returns a `Cause` of the remaining errors. It's helpful when working with
optional errors and filtering out certain error paths.

**Signature**

```ts
declare const flipCauseOption: <E>(self: Cause<Option.Option<E>>) => Option.Option<Cause<E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L889)

Since v2.0.0