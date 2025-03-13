Package: `effect`<br />
Module: `Cache`<br />

## Cache.ConsumerCache

A ConsumerCache models a portion of a cache which is safe to share without allowing to create new values or access existing ones.

It can be used safely to give over control for request management without leaking writer side details.

**Signature**

```ts
export interface ConsumerCache<in out Key, out Value, out Error = never>
  extends Cache.ConsumerVariance<Key, Value, Error>
{
  /**
   * Retrieves the value associated with the specified key if it exists.
   * Otherwise returns `Option.none`.
   */
  getOption(key: Key): Effect.Effect<Option.Option<Value>, Error>

  /**
   * Retrieves the value associated with the specified key if it exists and the
   * lookup function has completed. Otherwise returns `Option.none`.
   */
  getOptionComplete(key: Key): Effect.Effect<Option.Option<Value>>

  /**
   * Returns statistics for this cache.
   */
  readonly cacheStats: Effect.Effect<CacheStats>

  /**
   * Returns whether a value associated with the specified key exists in the
   * cache.
   */
  contains(key: Key): Effect.Effect<boolean>

  /**
   * Returns statistics for the specified entry.
   */
  entryStats(key: Key): Effect.Effect<Option.Option<EntryStats>>

  /**
   * Invalidates the value associated with the specified key.
   */
  invalidate(key: Key): Effect.Effect<void>

  /**
   * Invalidates the value associated with the specified key if the predicate holds.
   */
  invalidateWhen(key: Key, predicate: Predicate.Predicate<Value>): Effect.Effect<void>

  /**
   * Invalidates all values in the cache.
   */
  readonly invalidateAll: Effect.Effect<void>

  /**
   * Returns the approximate number of values in the cache.
   */
  readonly size: Effect.Effect<number>

  /**
   * Returns an approximation of the values in the cache.
   */
  readonly keys: Effect.Effect<Array<Key>>

  /**
   * Returns an approximation of the values in the cache.
   */
  readonly values: Effect.Effect<Array<Value>>

  /**
   * Returns an approximation of the values in the cache.
   */
  readonly entries: Effect.Effect<Array<[Key, Value]>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cache.ts#L100)

Since v2.0.0