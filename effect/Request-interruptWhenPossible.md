## interruptWhenPossible

Interrupts the child effect when requests are no longer needed

**Signature**

```ts
declare const interruptWhenPossible: { (all: Iterable<Request<any, any>>): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<void, E, R>; <A, E, R>(self: Effect.Effect<A, E, R>, all: Iterable<Request<any, any>>): Effect.Effect<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L189)

Since v2.0.0