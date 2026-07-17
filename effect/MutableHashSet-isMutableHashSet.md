Package: `effect`<br />
Module: `MutableHashSet`<br />

## MutableHashSet.isMutableHashSet

Checks whether the specified value is a `MutableHashSet`, `false` otherwise.

**When to use**

Use to narrow an unknown value before treating it as a mutable hash set.

**Details**

The check looks for the `MutableHashSet` runtime marker.

**Gotchas**

Native `Set` values do not satisfy this check.

**See**

- `MutableHashSet` for the mutable hash set interface

**Signature**

```ts
declare const isMutableHashSet: <V>(value: unknown) => value is MutableHashSet<V>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashSet.ts#L92)

Since v4.0.0