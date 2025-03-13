Package: `effect`<br />
Module: `Effect`<br />

## Effect.consoleWith

Retreives the `Console` service from the context and provides it to the
specified effectful function.

**Signature**

```ts
declare const consoleWith: <A, E, R>(f: (console: Console) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6649)

Since v2.0.0