Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.makeUnsafe

Creates a `SynchronizedRef` synchronously from an initial value.

**When to use**

This bypasses `Effect` construction; prefer `make` in effectful code.

**Signature**

```ts
declare const makeUnsafe: <A>(value: A) => SynchronizedRef<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L69)

Since v4.0.0