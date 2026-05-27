Package: `effect`<br />
Module: `Deferred`<br />

## Deferred.Deferred.Variance

Type-level variance marker for the value and error channels of `Deferred`.

**When to use**

Use to carry the value and error type parameters for `Deferred` in Effect's
type machinery.

**Details**

This interface is part of the public type structure and is not intended to
be constructed directly.

**Signature**

```ts
export interface Variance<in out A, in out E> {
    readonly [TypeId]: {
      readonly _A: Types.Invariant<A>
      readonly _E: Types.Invariant<E>
    }
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Deferred.ts#L168)

Since v2.0.0