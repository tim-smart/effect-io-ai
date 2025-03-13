Package: `effect`<br />
Module: `Cause`<br />

## Cause.stripFailures

Removes `Fail` and `Interrupt` nodes from a `Cause`, keeping only defects
(`Die`).

**Details**

This function is similar to `keepDefects` but returns a `Cause<never>`
directly, which can still store `Die` or finalizer-related defects. It's
helpful for analyzing only the irrecoverable portion of the error.

**Signature**

```ts
declare const stripFailures: <E>(self: Cause<E>) => Cause<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L963)

Since v2.0.0