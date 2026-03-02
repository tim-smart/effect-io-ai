Package: `effect`<br />
Module: `Queue`<br />

## Queue.Dequeue.Variance

Variance interface for Dequeue types, defining the type parameter constraints.

**Signature**

```ts
export interface Variance<A, E> {
    _A: Types.Covariant<A>
    _E: Types.Covariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L172)

Since v3.8.0