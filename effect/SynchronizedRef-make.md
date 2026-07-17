Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.make

Creates a `SynchronizedRef` from an initial value, wrapped in an `Effect`.

**When to use**

Use to create a `SynchronizedRef` inside an Effect program when later updates
may run effects and must be serialized.

**Details**

The returned effect constructs a fresh `SynchronizedRef` by delegating to
`makeUnsafe` when the effect is evaluated.

**See**

- `makeUnsafe` for synchronous construction when the caller controls safe initialization
- `Ref.make` for a plain `Ref` when updates do not need effectful synchronization

**Signature**

```ts
declare const make: <A>(value: A) => Effect.Effect<SynchronizedRef<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SynchronizedRef.ts#L91)

Since v2.0.0