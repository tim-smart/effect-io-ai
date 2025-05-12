Package: `effect`<br />
Module: `Effect`<br />

## Effect.context

Accesses the full context of the effect.

**Details**

This function provides the ability to access the entire context required by
an effect. The context is a container that holds dependencies or environment
values needed by an effect to run. By using this function, you can retrieve
and work with the context directly within an effect.

**Signature**

```ts
declare const context: <R>() => Effect<Context.Context<R>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7379)

Since v2.0.0