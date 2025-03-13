Package: `effect`<br />
Module: `Cause`<br />

## Cause.interruptOption

Retrieves the first `Interrupt` in a `Cause`, if present.

**Details**

This function returns an `Option` with the first fiber interruption
discovered. This is particularly useful for concurrency analysis or debugging
cancellations.

**Signature**

```ts
declare const interruptOption: <E>(self: Cause<E>) => Option.Option<FiberId.FiberId>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L917)

Since v2.0.0