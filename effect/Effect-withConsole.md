Package: `effect`<br />
Module: `Effect`<br />

## Effect.withConsole

Executes the specified workflow with the specified implementation of the
console service.

**Signature**

```ts
declare const withConsole: { <C extends Console>(console: C): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R, C extends Console>(effect: Effect<A, E, R>, console: C): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6831)

Since v2.0.0