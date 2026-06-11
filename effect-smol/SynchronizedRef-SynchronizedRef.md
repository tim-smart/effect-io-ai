Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.SynchronizedRef

A mutable reference whose update and modify operations are serialized with an
internal semaphore, including effectful transformations.

**When to use**

Use when shared state may be updated by multiple fibers and each update,
including effectful state transitions, must observe one current value and run
one at a time.

**See**

- `Ref.Ref` for a plain `Ref` when updates do not need effectful synchronization

**Signature**

```ts
export interface SynchronizedRef<in out A> extends Ref.Ref<A> {
  readonly [TypeId]: typeof TypeId
  readonly backing: Ref.Ref<A>
  readonly semaphore: Semaphore.Semaphore
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L37)

Since v2.0.0