Package: `effect`<br />
Module: `TRef`<br />

## TRef.TRef

A `TRef<A>` is a purely functional description of a mutable reference that can
be modified as part of a transactional effect. The fundamental operations of
a `TRef` are `set` and `get`. `set` transactionally sets the reference to a
new value. `get` gets the current value of the reference.

NOTE: While `TRef<A>` provides the transactional equivalent of a mutable
reference, the value inside the `TRef` should be immutable.

**Signature**

```ts
export interface TRef<in out A> extends TRef.Variance<A>, Pipeable {
  /**
   * Note: the method is unbound, exposed only for potential extensions.
   */
  modify<B>(f: (a: A) => readonly [B, A]): STM.STM<B>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TRef.ts#L38)

Since v2.0.0