Package: `effect`<br />
Module: `ScopedRef`<br />

## ScopedRef.make

Creates a new `ScopedRef` from the specified value.

**When to use**

Use to create a `ScopedRef` when the initial value is already available or
can be produced without acquiring resources.

**Details**

The `evaluate` function runs when the returned effect runs. The returned
effect requires a `Scope`, and the reference closes the currently stored
value's scope when that outer scope closes.

**Gotchas**

Do not use `make` for an initial value whose creation acquires resources; use
`fromAcquire` so acquisition and finalization are tracked.

**See**

- `fromAcquire` for creating a `ScopedRef` from an effect that acquires the initial value
- `set` for replacing the current value with a resourcefully acquired value

**Signature**

```ts
declare const make: <A>(evaluate: LazyArg<A>) => Effect.Effect<ScopedRef<A>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedRef.ts#L158)

Since v2.0.0