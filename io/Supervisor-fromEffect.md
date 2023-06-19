# fromEffect

Creates a new supervisor that constantly yields effect when polled

Part of the `Supervisor` module, imported from `@effect/io/Supervisor`.

**Signature**

```ts
export declare const fromEffect: <A>(effect: Effect.Effect<never, never, A>) => Supervisor<A>
```
