Package: `effect`<br />
Module: `Reloadable`<br />

## Reloadable.Reloadable

A `Reloadable` is an implementation of some service that can be dynamically
reloaded, or swapped out for another implementation on-the-fly.

**Signature**

```ts
export interface Reloadable<in out A> extends Reloadable.Variance<A> {
  /**
   * @internal
   */
  readonly scopedRef: ScopedRef.ScopedRef<A>
  /**
   * @internal
   */
  readonly reload: Effect.Effect<void, unknown>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reloadable.ts#L31)

Since v2.0.0