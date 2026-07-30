Package: `effect`<br />
Module: `Channel`<br />

## Channel.scopedWith

Use a function that receives a scope and returns an effect to emit an output
element. The output element will be the result of the returned effect, if
successful.

**Signature**

```ts
declare const scopedWith: <A, E, R>(f: (scope: Scope.Scope) => Effect.Effect<A, E, R>) => Channel<A, unknown, E, unknown, unknown, unknown, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1988)

Since v3.11.0