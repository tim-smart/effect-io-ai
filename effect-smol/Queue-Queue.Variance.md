Package: `effect`<br />
Module: `Queue`<br />

## Queue.Queue.Variance

Variance interface for Queue types, defining the type parameter constraints.

**Signature**

```ts
export interface Variance<A, E> {
    _A: Types.Invariant<A>
    _E: Types.Invariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L228)

Since v3.8.0