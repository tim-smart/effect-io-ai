Package: `effect`<br />
Module: `Scope`<br />

## Scope.use

Runs an effect with the provided closeable scope in its context and closes
that scope when the effect exits.

The scope is closed with the same exit value as the effect, so registered
finalizers can observe whether the effect succeeded, failed, or was
interrupted.

**Signature**

```ts
declare const use: { (scope: Closeable): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, Scope>>; <A, E, R>(self: Effect<A, E, R>, scope: Closeable): Effect<A, E, Exclude<R, Scope>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scope.ts#L510)

Since v4.0.0