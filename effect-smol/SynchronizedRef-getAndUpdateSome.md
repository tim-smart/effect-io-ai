Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.getAndUpdateSome

Applies a partial update atomically and returns the previous value. If the
function returns `Option.some`, the ref is updated; if it returns
`Option.none`, the ref is left unchanged.

**When to use**

Use to return the previous `SynchronizedRef` value while applying a pure
conditional update.

**See**

- `getAndUpdate` for always applying a pure update
- `updateSome` for applying a pure conditional update without returning the previous value

**Signature**

```ts
declare const getAndUpdateSome: { <A>(pf: (a: A) => Option.Option<A>): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, pf: (a: A) => Option.Option<A>): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L223)

Since v2.0.0