Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.SynchronizedRef

A mutable reference whose update and modify operations are serialized with an
internal semaphore, including effectful transformations.

**Signature**

```ts
export interface SynchronizedRef<in out A> extends Ref.Ref<A> {
  readonly [TypeId]: typeof TypeId
  readonly backing: Ref.Ref<A>
  readonly semaphore: Semaphore.Semaphore
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L42)

Since v2.0.0