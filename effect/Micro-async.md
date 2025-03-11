## async

Create a `Micro` effect from an asynchronous computation.

You can return a cleanup effect that will be run when the effect is aborted.
It is also passed an `AbortSignal` that is triggered when the effect is
aborted.

**Signature**

```ts
declare const async: <A, E = never, R = never>(register: (resume: (effect: Micro<A, E, R>) => void, signal: AbortSignal) => void | Micro<void, never, R>) => Micro<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1197)

Since v3.4.0