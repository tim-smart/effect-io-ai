Package: `effect`<br />
Module: `Exit`<br />

## Exit.mapErrorCause

Maps over the `Cause` contained in the `Failure` of the specified exit using
the provided function.

**Signature**

```ts
declare const mapErrorCause: { <E, E2>(f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): <A>(self: Exit<A, E>) => Exit<A, E2>; <E, A, E2>(self: Exit<A, E>, f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): Exit<A, E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L314)

Since v2.0.0