Package: `effect`<br />
Module: `AtomRef`<br />

## AtomRef.ReadonlyRef

A read-only reactive reference.

**Details**

It exposes a stable key, the current value, subscriptions to value changes, and
`map` for creating derived read-only references. Equality and hashing are based
on the current value.

**Signature**

```ts
export interface ReadonlyRef<A> extends Equal.Equal {
  readonly [TypeId]: TypeId
  readonly key: string
  readonly value: A
  readonly subscribe: (f: (a: A) => void) => () => void
  readonly map: <B>(f: (a: A) => B) => ReadonlyRef<B>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AtomRef.ts#L43)

Since v4.0.0