Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.setAndGet

Sets the value of the `SynchronizedRef` and returns the new value.

**When to use**

Use to replace the current `SynchronizedRef` value with a known value and
return that new value.

**See**

- `set` for setting without returning a value
- `getAndSet` for setting while returning the previous value

**Signature**

```ts
declare const setAndGet: { <A>(value: A): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, value: A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L433)

Since v2.0.0