Package: `effect`<br />
Module: `Queue`<br />

## Queue.Dequeue.Variance

Type-level variance marker for `Dequeue`.

`Dequeue` is covariant in both the taken value type `A` and failure type
`E`, because values and failures are observed through this handle.

**Signature**

```ts
export interface Variance<A, E> {
    _A: Types.Covariant<A>
    _E: Types.Covariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L239)

Since v3.8.0