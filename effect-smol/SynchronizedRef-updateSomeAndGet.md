Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.updateSomeAndGet

Applies a partial update and returns the resulting current value.
`Option.some` stores and returns the new value; `Option.none` returns the
unchanged value.

**When to use**

Use to apply a pure conditional `SynchronizedRef` update and return the
resulting current value.

**See**

- `updateSome` for conditional updates without returning a value
- `updateAndGet` for always applying a pure update and returning the new value

**Signature**

```ts
declare const updateSomeAndGet: { <A>(pf: (a: A) => Option.Option<A>): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, pf: (a: A) => Option.Option<A>): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L640)

Since v2.0.0