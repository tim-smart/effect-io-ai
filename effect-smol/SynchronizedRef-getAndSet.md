Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.getAndSet

Sets a new value atomically and returns the previous value, serialized by the
ref's semaphore.

**When to use**

Use to replace a `SynchronizedRef` with a known value when the previous value
is also needed.

**See**

- `set` for setting a value without returning the previous value
- `setAndGet` for setting a value and returning the new value
- `getAndUpdate` for deriving the new value from the current value

**Signature**

```ts
declare const getAndSet: { <A>(value: A): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, value: A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L153)

Since v2.0.0