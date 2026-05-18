Package: `effect`<br />
Module: `Queue`<br />

## Queue.Queue.Variance

Type-level variance marker for `Queue`.

A full `Queue` is invariant in both `A` and `E` because the same handle can
both produce and consume values and failures.

**Signature**

```ts
export interface Variance<A, E> {
    _A: Types.Invariant<A>
    _E: Types.Invariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L302)

Since v3.8.0