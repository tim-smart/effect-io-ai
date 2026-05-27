Package: `effect`<br />
Module: `Atom`<br />

## Atom.subscriptionRef

Creates a writable atom backed by a `SubscriptionRef`, or by an effect that produces one, updating from ref changes and writing atom updates back to the ref.

**Signature**

```ts
declare const subscriptionRef: { <A>(ref: SubscriptionRef.SubscriptionRef<A> | ((get: AtomContext) => SubscriptionRef.SubscriptionRef<A>)): Writable<A>; <A, E>(effect: Effect.Effect<SubscriptionRef.SubscriptionRef<A>, E, Scope.Scope | AtomRegistry> | ((get: AtomContext) => Effect.Effect<SubscriptionRef.SubscriptionRef<A>, E, Scope.Scope | AtomRegistry>)): Writable<AsyncResult.AsyncResult<A, E>, A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L926)

Since v4.0.0