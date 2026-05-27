Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.State

Represents whether a `ScopedCache` is open or closed.

**When to use**

Use when inspecting the low-level lifecycle state of a scoped cache.

**Details**

`Open` stores cached entries in access order for reuse and eviction.
`Closed` means the owning scope has closed and the cache can no longer
perform lookup operations.

**Signature**

```ts
type State<K, A, E> = {
  readonly _tag: "Open"
  readonly map: MutableHashMap.MutableHashMap<K, Entry<A, E>>
} | {
  readonly _tag: "Closed"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L93)

Since v4.0.0