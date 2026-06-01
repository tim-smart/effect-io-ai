Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.set

Sets the value of the `SynchronizedRef`, serialized by the ref's semaphore.

**When to use**

Use to replace the current value of a `SynchronizedRef` with a known value
while keeping the write serialized with other synchronized updates.

**See**

- `getAndSet` for replacing the value when the previous value is needed
- `setAndGet` for replacing the value when the new value should be returned
- `update` for deriving the next value from the current value

**Signature**

```ts
declare const set: { <A>(value: A): (self: SynchronizedRef<A>) => Effect.Effect<void>; <A>(self: SynchronizedRef<A>, value: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L423)

Since v2.0.0