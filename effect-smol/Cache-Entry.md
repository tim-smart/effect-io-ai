Package: `effect`<br />
Module: `Cache`<br />

## Cache.Entry

Represents a low-level cache entry containing a deferred lookup result and
an optional expiration timestamp.

**When to use**

Use when inspecting a `Cache`'s low-level map and you need the stored
deferred lookup result or expiration timestamp for a key.

**Details**

An `expiresAt` value of `undefined` means the entry does not expire.

**See**

- `Cache` for the public cache API that manages entries through
combinators

**Signature**

```ts
export interface Entry<A, E> {
  expiresAt: number | undefined
  readonly deferred: Deferred.Deferred<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L169)

Since v4.0.0