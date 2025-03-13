Package: `effect`<br />
Module: `ScopedRef`<br />

## ScopedRef.ScopedRef

A `ScopedRef` is a reference whose value is associated with resources,
which must be released properly. You can both get the current value of any
`ScopedRef`, as well as set it to a new value (which may require new
resources). The reference itself takes care of properly releasing resources
for the old value whenever a new value is obtained.

**Signature**

```ts
export interface ScopedRef<in out A> extends Effect.Effect<A>, ScopedRef.Variance<A>, Pipeable {
  /** @internal */
  readonly ref: Synchronized.SynchronizedRef<readonly [Scope.Scope.Closeable, A]>

  readonly [Unify.typeSymbol]?: unknown
  readonly [Unify.unifySymbol]?: ScopedRefUnify<this>
  readonly [Unify.ignoreSymbol]?: ScopedRefUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedRef.ts#L35)

Since v2.0.0