Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.get

Returns an `Effect` that reads the current value of the `SynchronizedRef`.

**When to use**

Use to read the current value of a `SynchronizedRef` inside an `Effect`
program without changing it.

**See**

- `getUnsafe` for synchronous reads when the caller controls safe access outside `Effect`

**Signature**

```ts
declare const get: <A>(self: SynchronizedRef<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L134)

Since v2.0.0