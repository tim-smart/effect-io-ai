Package: `effect`<br />
Module: `Cache`<br />

## Cache.Entry

Represents a low-level cache entry containing a deferred lookup result and
an optional expiration timestamp.

**Notes**

An `expiresAt` value of `undefined` means the entry does not expire. Most
users should interact with entries through the `Cache` combinators rather
than constructing them directly.

**Signature**

```ts
export interface Entry<A, E> {
  expiresAt: number | undefined
  readonly deferred: Deferred.Deferred<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L152)

Since v4.0.0