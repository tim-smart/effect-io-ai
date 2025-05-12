Package: `effect`<br />
Module: `Effect`<br />

## Effect.mapErrorCause

Maps the cause of failure of an effect using a specified function.

**See**

- `sandbox` for a version that exposes the full cause of failures, defects, or interruptions.
- `catchAllCause` for a version that can recover from all types of defects.

**Signature**

```ts
declare const mapErrorCause: { <E, E2>(f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E2, R>; <A, E, R, E2>(self: Effect<A, E, R>, f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): Effect<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5302)

Since v2.0.0