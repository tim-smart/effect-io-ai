Package: `effect`<br />
Module: `ScopedRef`<br />

## ScopedRef.set

Sets the value of this reference to the specified resourcefully-created
value, releasing any resources associated with the old value.

**When to use**

Use to replace the current value of an existing `ScopedRef` with a
resourcefully acquired value while releasing resources for the previous
value.

**Details**

This method will not return until either the reference is successfully
changed to the new value, with old resources released, or until the attempt
to acquire a new value fails.

**Signature**

```ts
declare const set: { <A, R, E>(acquire: Effect.Effect<A, E, R>): (self: ScopedRef<A>) => Effect.Effect<void, E, Exclude<R, Scope.Scope>>; <A, R, E>(self: ScopedRef<A>, acquire: Effect.Effect<A, E, R>): Effect.Effect<void, E, Exclude<R, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedRef.ts#L185)

Since v2.0.0