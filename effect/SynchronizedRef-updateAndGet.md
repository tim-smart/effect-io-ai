Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.updateAndGet

Updates the value of the `SynchronizedRef` with a function and returns the
new value.

**When to use**

Use to apply a pure `SynchronizedRef` state transition and return the new
stored value.

**See**

- `update` for updating without returning the new value
- `getAndUpdate` for updating while returning the previous value

**Signature**

```ts
declare const updateAndGet: { <A>(f: (a: A) => A): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, f: (a: A) => A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SynchronizedRef.ts#L514)

Since v2.0.0