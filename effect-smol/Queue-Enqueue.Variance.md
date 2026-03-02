Package: `effect`<br />
Module: `Queue`<br />

## Queue.Enqueue.Variance

Variance interface for Enqueue types, defining the type parameter constraints.

**Signature**

```ts
export interface Variance<A, E> {
    _A: Types.Contravariant<A>
    _E: Types.Contravariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L117)

Since v4.0.0