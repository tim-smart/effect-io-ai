Package: `effect`<br />
Module: `Context`<br />

## Context.mutate

Perform a series of mutations on a `Context`. Prevents unnecessary copying
of the underlying map when multiple mutations are needed.

**Signature**

```ts
declare const mutate: { <Services, B>(f: (context: Context<Services>) => Context<B>): <Services>(self: Context<Services>) => Context<B>; <Services, B>(self: Context<Services>, f: (context: Context<Services>) => Context<B>): Context<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L964)

Since v4.0.0