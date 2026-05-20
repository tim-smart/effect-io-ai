Package: `effect`<br />
Module: `Pull`<br />

## Pull.catchDone

Handles `Cause.Done` failures in an effect while leaving ordinary failures
in the error channel.

**Details**

The handler receives the done leftover value and may recover with a new
effect. Non-done errors are preserved.

**Signature**

```ts
declare const catchDone: { <E, A2, E2, R2>(f: (leftover: Cause.Done.Extract<E>) => Effect<A2, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A | A2, ExcludeDone<E> | E2, R | R2>; <A, R, E, A2, E2, R2>(self: Effect<A, E, R>, f: (leftover: Cause.Done.Extract<E>) => Effect<A2, E2, R2>): Effect<A | A2, ExcludeDone<E> | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L113)

Since v4.0.0