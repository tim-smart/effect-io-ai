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
export interface ScopedRef<in out A> extends Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly backing: Synchronized.SynchronizedRef<readonly [Scope.Closeable, A]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedRef.ts#L24)

Since v2.0.0