Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.updateAndGet

Updates the value of the `SynchronizedRef` with a function and returns the
new value.

**Signature**

```ts
declare const updateAndGet: { <A>(f: (a: A) => A): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, f: (a: A) => A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L366)

Since v2.0.0