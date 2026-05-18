Package: `effect`<br />
Module: `Queue`<br />

## Queue.Enqueue.Variance

Type-level variance marker for `Enqueue`.

`Enqueue` is contravariant in both its offered value type `A` and failure
type `E`, because values and failures flow into the queue through this
handle.

**Signature**

```ts
export interface Variance<A, E> {
    _A: Types.Contravariant<A>
    _E: Types.Contravariant<E>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L177)

Since v4.0.0