Package: `effect`<br />
Module: `ScopedRef`<br />

## ScopedRef.get

Retrieves the current value of the scoped reference effectfully.

**When to use**

Use to read the value currently stored in a `ScopedRef` inside an `Effect`
workflow.

**See**

- `getUnsafe` for reading the current value synchronously when an unsafe read is acceptable

**Signature**

```ts
declare const get: <A>(self: ScopedRef<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ScopedRef.ts#L118)

Since v2.0.0