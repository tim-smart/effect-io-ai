Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.getUnsafe

Reads the current value synchronously, bypassing the `Effect` API and the
ref's semaphore.

**When to use**

Use when you need immediate synchronous access to a `SynchronizedRef` value
in low-level code that can safely read outside an `Effect`.

**See**

- `get` for the Effect-wrapped read when composing inside Effect programs

**Signature**

```ts
declare const getUnsafe: <A>(self: SynchronizedRef<A>) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SynchronizedRef.ts#L107)

Since v4.0.0