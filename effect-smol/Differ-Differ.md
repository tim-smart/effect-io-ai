Package: `effect`<br />
Module: `Differ`<br />

## Differ.Differ

Describes how to compute, combine, and apply patches for values of type `T`.

**Details**

A `Differ` provides an empty patch, computes the patch between two values,
combines patches, and applies a patch to an old value to produce an updated
value.

**Signature**

```ts
export interface Differ<in out T, in out Patch> {
  readonly empty: Patch
  diff(oldValue: T, newValue: T): Patch
  combine(first: Patch, second: Patch): Patch
  patch(oldValue: T, patch: Patch): T
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Differ.ts#L53)

Since v2.0.0